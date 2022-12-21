defmodule RankmodeWeb.Live.Gameplays.Index do
  use RankmodeWeb, :live_view
  alias Rankmode.Profiles
  alias Rankmode.Gameplays
  alias RankmodeWeb.Live.Components.Avatar
  alias RankmodeWeb.Live.Components.Chip

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

    gameplays = Gameplays.Queries.for(profile: profile.id)

    {:ok,
      socket
      |> Helpers.init(session)
      |> assign(:page, %{
        title: "Gameplays",
        breadcrumb: Helpers.crumbs(socket, [:profiles, :profiles_gameplays]),
        user: user,
        context: :profiles
      })
      |> assign(:profile, profile)
      |> assign(:gameplays, gameplays)
    }
  end
end
