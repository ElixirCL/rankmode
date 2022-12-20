defmodule RankmodeWeb.GameplayController do
  use RankmodeWeb, :controller

  alias Rankmode.Gameplays
  alias Rankmode.Cards
  alias Rankmode.Profiles
  alias Rankmode.GameCenters
  alias Rankmode.GameCenters.Machines
  alias Rankmode.Songs
  alias Rankmode.Songs.Charts
  alias Rankmode.Leaderboards

  action_fallback RankmodeWeb.FallbackController

  def create(conn, params) do
    card_uid = Helpers.header(conn, "card")
    card = Cards.Queries.get(uid: card_uid)

    case card do
      nil -> show_error(conn, %{card: "not valid"})
      card ->
        profile_id = Map.get(params, "profile_id", -1)
        profile = Profiles.Queries.get(id: profile_id)
        case !is_nil(profile) && profile.card_id == card.id do
          true -> save_gameplay(conn, create_attrs(params, card, profile), profile)
          false -> show_error(conn, %{profile: "not valid"})
        end
    end
  end

  defp create_attrs(params, card, profile) do

    gamecenter = GameCenters.get!(id: Map.get(params, "gamecenter_id", -1))
    machine = Machines.get!(id: Map.get(params, "machine_id", -1))

    song = Songs.get!(name: Map.get(params, "song_name", ""))
    chart = Charts.get!(song: song.id, diff: Map.get(params, "chart_diff", ""), type: Map.get(params, "chart_type", ""))

    input = Gameplays.Calculator.Input.from(params: params, chart: chart)
    exp = Gameplays.Calculator.exp(input, profile.mix.uid)
    pp = Gameplays.Calculator.pp(input, profile.mix.uid)

    Map.merge(%{
      profile_id: profile.id,
      card_id: card.id,
      user_id: profile.user_id,
      mix_id: profile.mix_id,
      game_id: profile.game_id,
      leaderboard_id: profile.leaderboard.id,
      gamecenter_id: gamecenter.id,
      machine_id: machine.id,
      song_id: song.id,
      chart_id: chart.id,
      exp: exp,
      pp: pp,
      meta: params
    }, Map.from_struct(input))
  end

  defp show_error(conn, changeset: changeset) do
    IO.inspect changeset, label: "Error Gameplay Insert"
    conn
    |> put_status(:bad_request)
    |> render("error.json", changeset: changeset)
  end

  defp show_error(conn, messages) do
    conn
    |> put_status(:bad_request)
    |> render("error.json", messages: messages)
  end

  defp save_gameplay(conn, attrs, profile) do
    case Gameplays.Commands.create(attrs) do
      {:ok, gameplay} -> update_leaderboard(conn, profile, gameplay, attrs)
      {:error, changeset} ->
        show_error(conn, changeset: changeset)
    end
  end

  defp update_leaderboard(conn, profile, gameplay, input) do
    attrs = Leaderboards.prepare_update_attrs(profile, gameplay, input)

    IO.inspect attrs

    case Leaderboards.Commands.update(profile.leaderboard.id, attrs) do
      {:ok, leaderboard} -> conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.gameplay_path(conn, :show, gameplay))
      |> render("show.json", gameplay: gameplay, leaderboard: leaderboard)

      {:error, changeset} ->
        show_error(conn, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    gameplay = Gameplays.Queries.get!(id)
    render(conn, "show.json", gameplay: gameplay)
  end

end
