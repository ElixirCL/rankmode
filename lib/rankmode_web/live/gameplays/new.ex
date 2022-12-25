defmodule RankmodeWeb.Live.Gameplays.New do
  use RankmodeWeb, :live_view
  import Ecto.Changeset, only: [get_field: 2]

  alias RankmodeWeb.Live.Components.Alert
  alias RankmodeWeb.Live.Components.Avatar

  alias Rankmode.Profiles
  alias Rankmode.Gameplays
  alias Rankmode.Modes

  alias Rankmode.Songs
  alias Rankmode.Songs.Charts

  alias Rankmode.GameCenters
  alias Rankmode.GameCenters.Machines

  alias Rankmode.Grades
  alias Rankmode.Judgements

  alias Rankmode.Leaderboards

  # MARK: helpers
  defp process_values(socket, values) do
    profile = socket.assigns.profile
    song_id = Map.get(values, "song", 0)
    song = Songs.Queries.get!(id: song_id)

    charts = Charts.Queries.for(mix: profile.mix_id, song: song_id)
    chart = Charts.Queries.get(id: Map.get(values, "chart", 0)) || List.first(charts)

    modes = Charts.Queries.modes(charts)
    mode = Modes.get(id: Map.get(values, "mode", 0)) || List.first(modes)

    ratings = Charts.Queries.ratings(charts, mode: mode)
    rating = Charts.Queries.ratings(ratings, with: Map.get(values, "rating"))

    gamecenter = GameCenters.Queries.get(id: Map.get(values, "gamecenter", 0)) || socket.assigns.gamecenter

    machines = Machines.Queries.for(center: gamecenter.id)
    machine = Machines.Queries.get(id: Map.get(values, "machine", 0)) || List.first(machines)

    grade = Grades.Queries.get(id: Map.get(values, "grade", 0)) || socket.assigns.grade

    judgement = Judgements.Queries.get(id: Map.get(values, "judgement", 1)) || socket.assigns.judgement

    input = Gameplays.Calculator.Input.from(profile, chart, grade, judgement, values, profile.mix.uid)
    exp = Gameplays.Calculator.exp(input, profile.mix.uid)
    pp = Gameplays.Calculator.pp(input, profile.mix.uid)

    attrs = Map.merge(%{
      profile_id: profile.id,
      user_id: profile.user_id,
      mix_id: profile.mix_id,
      card_id: profile.card_id,
      game_id: profile.game_id,
      machine_id: machine.id,
      gamecenter_id: gamecenter.id,
      grade_id: grade.id,
      song_id: song.id,
      chart_id: chart.id,
      judgement_id: judgement.id,
      leaderboard_id: profile.leaderboard.id,
      exp: exp,
      pp: pp
    }, input)

    socket
    |> assign(:modes, modes)
    |> assign(:mode, mode)
    |> assign(:charts, charts)
    |> assign(:chart, chart)
    |> assign(:ratings, ratings)
    |> assign(:rating, rating)
    |> assign(:song, song)
    |> assign(:machines, machines)
    |> assign(:machine, machine)
    |> assign(:grade, grade)
    |> assign(:judgement, judgement)
    |> assign(:total_steps, attrs.total_steps)
    |> assign(:changeset, Gameplays.Changesets.new(attrs))
  end

  # MARK: Handlers
  @impl true
  def handle_event("on:form:change", values, socket) do
    {:noreply, socket |> process_values(values)}
  end

  def handle_event("on:form:submit", values, socket) do
    socket = process_values(socket, values)
    changeset = socket.assigns.changeset
    profile = socket.assigns.profile
    chart = socket.assigns.chart
    judgement = socket.assigns.judgement
    total_steps = socket.assigns.total_steps

    case Gameplays.Commands.create(changeset) do
      {:ok, gameplay} ->
        attrs = Leaderboards.prepare_update_attrs(profile, gameplay, total_steps, chart, judgement)

        case Leaderboards.Commands.update(profile.leaderboard.id, attrs) do
          {:ok, _leaderboard} -> {:noreply, put_flash(socket
                |> redirect(to: "/./"),
                :index,
                "Gameplay Added."
              )
            }
          {:error, changeset} ->
            case Gameplays.Commands.delete(gameplay.id) do
              _ -> {:noreply, socket |> assign(:changeset, changeset)}
            end
        end
      {:error, changeset} -> {:noreply, socket |> assign(:changeset, changeset)}
    end
  end

  @impl true
  def mount(params, session, socket) do
    user = Helpers.current_user(session)
    profile_id = Map.get(params, "profile", 0)
    profile = Profiles.Queries.get(id: profile_id, user: user.id)

    mount(params, session, socket, user, profile)
  end

  # If the profile does not belongs to user, then redirect to home
  def mount(_params, _session, socket, _user, nil) do
    {:ok, socket |> redirect(to: "/")}
  end

  def mount(_params, session, socket, user, profile) do

    charts = Charts.Queries.for(mix: profile.mix_id)

    songs = Charts.Queries.songs(charts)

    gamecenters = GameCenters.all()
    gamecenter = List.first(gamecenters)

    grades = Grades.Queries.all(in: profile.mix_id)
    grade = List.first(grades)

    judgements = Judgements.Queries.all(in: profile.mix_id)
    judgement = List.first(judgements)

    {:ok,
      socket
      |> Helpers.init(session)
      |> assign(:page, %{
        title: "New Gameplay",
        breadcrumb: Helpers.crumbs(socket, [:profiles, {:profiles_gameplays, "./"}, :profiles_gameplays_new]),
        user: user,
        context: :profiles
      })
      |> assign(:profile, profile)
      |> assign(:modes, [])
      |> assign(:mode, nil)
      |> assign(:charts, charts)
      |> assign(:ratings, [])
      |> assign(:rating, nil)
      |> assign(:chart, nil)
      |> assign(:songs, songs)
      |> assign(:song, nil)
      |> assign(:machine, nil)
      |> assign(:machines, [])
      |> assign(:gamecenter, gamecenter)
      |> assign(:gamecenters, gamecenters)
      |> assign(:grades, grades)
      |> assign(:grade, grade)
      |> assign(:judgements, judgements)
      |> assign(:judgement, judgement)
      |> assign(:total_steps, 0)
      |> assign(:changeset, Gameplays.Changesets.empty())
    }
  end
end
