defmodule RankmodeWeb.Live.Cards.Index do
  use RankmodeWeb, :live_view

  alias RankmodeWeb.Live.Components.Alert
  alias RankmodeWeb.Live.Components.Chip

  alias Rankmode.Cards

  @impl true
  def mount(_params, session, socket) do
    user = Helpers.current_user(session)
    cards = Cards.Queries.for(user: user.id)

    {:ok, socket |>
      Helpers.init(session)
      |> assign(:page, %{
        title: "Cards",
        breadcrumb: Helpers.crumbs(socket, [:cards]),
        user: user,
        context: :cards
      })
      |> assign(:cards, cards)
    }
  end
end
