defmodule RankmodeWeb.Live.Profiles.Index do
  use RankmodeWeb, :live_view
  alias RankmodeWeb.Live.Components.Chip
  alias RankmodeWeb.Live.Components.Avatar
  alias Rankmode.Profiles

  def get_leaderboard(socket, profile) do
    get_in(socket.assigns, [:leaderboards, "#{profile.id}#{profile.mix_id}"])
  end

  @impl true
  def mount(_params, session, socket) do

    user = Helpers.current_user(session)
    profiles = Profiles.Queries.for(user: user.id)

    {:ok,
      socket
      |> Helpers.init(session)
      |> assign(:page, %{
        title: "Profiles",
        breadcrumb: Helpers.crumbs(socket, [:profiles]),
        user: user,
        context: :profiles
      })
      |> assign(:profiles, profiles)
    }
  end
end
