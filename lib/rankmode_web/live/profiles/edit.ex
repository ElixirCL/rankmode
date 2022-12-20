defmodule RankmodeWeb.Live.Profiles.Edit do
  use RankmodeWeb, :live_view

  import Ecto.Changeset, only: [get_field: 2]

  alias RankmodeWeb.Live.Components.Avatar
  alias RankmodeWeb.Live.Components.Alert

  alias Rankmode.Profiles
  alias Rankmode.Games
  alias Rankmode.Mixes
  alias Rankmode.Avatars


  @impl true
  def handle_event("on:form:change", values, socket) do

    avatar = Avatars.get(id: values["avatar"]) || socket.assigns[:avatar]
    name = get_in(values, ["profile", "name"])
    profile = socket.assigns.profile

    attrs = %{
      name: name,
      avatar_id: avatar.id,
      user_id: socket.assigns.page.user.id,
      game_id: profile.game_id,
      mix_id: profile.mix_id
    }

    changeset = Profiles.Changesets.changeset(attrs)

    case changeset.errors == [] do
      true -> {:noreply, socket
        |> assign(:avatar, avatar)
        |> assign(:changeset, changeset)
      }
      false -> {:noreply, put_flash(socket
        |> assign(:avatar, avatar)
        |> assign(:changeset, changeset),
        :error, true)
      }
    end
      # |> Map.put(:action, :insert)


  end

  def handle_event("on:form:submit", values, socket) do

    user_id = socket.assigns.page.user.id
    profile_id = socket.assigns.profile.id
    profile = Profiles.Queries.get(id: profile_id, user: user_id)

    case profile do
      nil -> {:noreply, socket |> redirect(to: "/")}
      _ -> attrs = %{
        name: values["profile"]["name"],
        avatar_id: values["avatar"],
        mix_id: profile.mix_id,
        game_id: profile.game_id,
        user_id: user_id
      }

      case Profiles.Commands.update(profile.id, attrs) do
        {:ok, profile} -> {:noreply,
          put_flash(socket
            |> assign(:profile, profile),
          :info, "Profile Updated")
        }
        {:error, changeset} -> {:noreply, put_flash(socket
          |> assign(:changeset, changeset),
          :error, true)
        }
      end
    end
  end

  def handle_event("on:delete:change", values, socket) do
    changeset = Profiles.Changesets.delete(socket.assigns.profile, %{confirm?: values["delete"]["confirm?"]})
    {:noreply, socket
      |> assign(:changeset_delete, changeset)
    }
  end

  def handle_event("on:delete:submit", _values, socket) do
    case Profiles.Commands.delete(socket.assigns.profile.id) do
      {:ok, _} -> {:noreply, put_flash(socket
          |> redirect(to: "/"),
          :info,
          "Profile '#{socket.assigns.profile.name}' Deleted")
        }
      {:error, _changeset} -> {:noreply, socket}
    end
  end

  @impl true
  def mount(params, session, socket) do

    user = Helpers.current_user(session)
    profile_id = Map.get(params, "profile", 0)
    profile = Profiles.Queries.get(id: profile_id, user: user.id)

    case profile do
      nil -> mount(params, session, socket, :error)
      _ -> mount(params, session, socket, profile)
    end
  end

  def mount(_params, _session, socket, :error) do
    {:ok, redirect(socket, to: "/")}
  end

  def mount(_params, session, socket, profile) do

    games = Games.all()
    game = profile.game

    mixes = Mixes.get(for: game.id)
    mix = profile.mix

    # TODO: Enable all avatars available for the profile
    avatars = Avatars.all_free()
    avatar = profile.avatar

    {:ok,
      socket
      |> Helpers.init(session)
      |> assign(:page, %{
        title: "Edit Profile",
        breadcrumb: Helpers.crumbs(socket, [:profiles, :profiles_edit]),
        user: Helpers.current_user(session),
        context: :profiles
      })
      |> assign(:profile, profile)
      |> assign(:games, games)
      |> assign(:game, game)
      |> assign(:mixes, mixes)
      |> assign(:mix, mix)
      |> assign(:avatars, avatars)
      |> assign(:avatar, avatar)
      |> assign(:changeset, Profiles.Changesets.update(profile))
      |> assign(:changeset_delete, Profiles.Changesets.delete(profile))
      |> assign(:can_delete?, false)
    }
  end
end
