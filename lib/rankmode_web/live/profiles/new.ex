defmodule RankmodeWeb.Live.Profiles.New do
  use RankmodeWeb, :live_view

  import Ecto.Changeset, only: [get_field: 2]

  alias RankmodeWeb.Live.Components.Avatar
  alias RankmodeWeb.Live.Components.Alert

  alias Rankmode.Games
  alias Rankmode.Mixes
  alias Rankmode.Avatars
  alias Rankmode.Profiles
  alias Rankmode.Leaderboards

  @impl true
  def handle_event("on:form:submit", values, socket) do
    attrs = %{
      name: values["profile"]["name"],
      game_id: values["game"],
      mix_id: values["mix"],
      avatar_id: values["avatar"],
      user_id: socket.assigns.page.user.id
    }

    case Profiles.Commands.create(attrs) do
        {:ok, profile} ->
          case Leaderboards.create_leaderboard(%{
            profile_id: profile.id,
            mix_id: profile.mix_id,
            game_id: profile.game_id
          }) do
            {:ok, _leaderboard} ->
              {:noreply, put_flash(socket
                  |> redirect(to: "/"),
                  :info,
                  "Profile `#{profile.name}` Created."
                )
              }
            {:error, changeset} ->
              {:noreply, put_flash(socket
                  |> assign(:changeset, changeset),
                  :error,
                  true
                )
              }
          end
        {:error, changeset} -> {:noreply, put_flash(socket
            |> assign(:changeset, changeset), :error, true)}
    end
  end

  def handle_event("on:form:change", values, socket) do

    game = Games.get(id: values["game"]) || socket.assigns[:game]

    mixes = case socket.assigns[:game].id == game.id do
      true -> socket.assigns[:mixes]
      false -> Mixes.get(for: game.id)
    end

    mix = case socket.assigns[:game].id == game.id do
      true -> Mixes.get(id: values["mix"])
      false -> List.first(mixes)
    end

    avatar = Avatars.get(id: values["avatar"]) || socket.assigns[:avatar]

    name = get_in(values, ["profile", "name"])

    attrs = %{
      name: name,
      game_id: game.id,
      mix_id: mix.id,
      avatar_id: avatar.id,
      user_id: socket.assigns.page.user.id
    }

    changeset = Profiles.Changesets.changeset(attrs)
      # |> Map.put(:action, :insert)

    socket = socket
    |> assign(:avatar, avatar)
    |> assign(:game, game)
    |> assign(:mix, mix)
    |> assign(:changeset, changeset)

    IO.inspect changeset

    case changeset.errors == [] do
      true -> {:noreply, socket}
      false -> {:noreply, put_flash(socket, :error, true)}
    end
  end

  @impl true
  def mount(_params, session, socket) do
    games = Games.all()
    game = List.first(games)
    mixes = Mixes.get(for: game.id)
    mix = List.first(mixes)

    avatars = Avatars.all_free()
    avatar = List.first(avatars)

    {:ok, socket
      |> Helpers.init(session)
      |> assign(:page, %{
        title: "New Profile",
        breadcrumb: Helpers.crumbs(socket, [:profiles, :profiles_new]),
        user: Helpers.current_user(session),
        context: :profiles
      })
      |> assign(:games, games)
      |> assign(:game, game)
      |> assign(:mixes, mixes)
      |> assign(:mix, mix)
      |> assign(:avatars, avatars)
      |> assign(:avatar, avatar)
      |> assign(:changeset, Profiles.Changesets.empty())
    }
  end
end
