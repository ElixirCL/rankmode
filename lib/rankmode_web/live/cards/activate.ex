defmodule RankmodeWeb.Live.Cards.Activate do
  use RankmodeWeb, :live_view

  import Ecto.Changeset, only: [get_field: 2]

  alias Rankmode.Cards
  alias Rankmode.Profiles

  alias RankmodeWeb.Live.Components.Alert

  @impl true
  def handle_event("on:form:change", values, socket) do
    uid = values["card"]["uid"]
    card = Cards.Queries.get(:notactivated, uid: uid)

    case card do
      nil -> {:noreply, put_flash(socket, :error, "Card not found.")}
      _ -> {:noreply, socket}
    end
  end

  def handle_event("on:form:submit", values, socket) do

    user = socket.assigns.page.user
    uid = values["card"]["uid"]
    profile = Profiles.Queries.get(id: values["card"]["profiles"], user: user.id)
    card = Cards.Queries.get(:notactivated, uid: uid)

    case card do
      nil -> {:noreply, put_flash(socket, :error, "Card not found.")}
      _ ->
        case Cards.Commands.activate(card.id, %{
          uid: card.uid,
          user_id: user.id,
          game_id: profile.game.id,
          mix_id: profile.mix.id
        }) do
          {:ok, card} -> case Profiles.Commands.update(profile.id, %{
            name: profile.name,
            avatar_id: profile.avatar_id,
            user_id: profile.user_id,
            game_id: profile.game_id,
            mix_id: profile.mix_id,
            card_id: card.id
          }) do
            {:ok, _} -> {:noreply,
              put_flash(socket |> redirect(to: Routes.cards_index_path(socket, :index)), :info, "Card #{card.uid} Activated.")
            }
            {:error, changeset} -> {:noreply, socket |> assign(:changeset, changeset)}
          end
          {:error, changeset} -> {:noreply, socket |> assign(:changeset, changeset)}
        end
    end
  end

  @impl true
  def mount(_params, session, socket) do
    user = Helpers.current_user(session)
    profiles = Profiles.Queries.for(user: user.id)

    {:ok, socket
      |> Helpers.init(session)
      |> assign(:page, %{
        title: "Activate",
        breadcrumb: Helpers.crumbs(socket, [:cards, :cards_activate]),
        user: user,
        context: :cards
      })
      |> assign(:profiles, profiles)
      |> assign(:changeset, Cards.Changesets.empty())
    }
  end
end
