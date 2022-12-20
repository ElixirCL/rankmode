defmodule RankmodeWeb.Live.Cards.Edit do
  use RankmodeWeb, :live_view

  alias Rankmode.Cards
  alias Rankmode.Profiles

  alias RankmodeWeb.Live.Components.Alert

  defp update_card(card, profile, socket) do
    case Profiles.Commands.update(profile.id, %{
      name: profile.name,
      avatar_id: profile.avatar_id,
      user_id: profile.user_id,
      game_id: profile.game_id,
      mix_id: profile.mix_id,
      card_id: card.id
    }) do
      {:ok, _} -> case Cards.Commands.update(card.id, %{
        uid: card.uid,
        mix_id: profile.mix_id,
        game_id: profile.game_id
      }) do
        {:ok, _} -> {:noreply,
          put_flash(socket |> redirect(to: Routes.cards_index_path(socket, :index)), :info, "Card #{card.uid} Assigned to Profile #{profile.name}.")
        }
        {:error, changeset} -> {:noreply, socket |> assign(:changeset, changeset)}
      end
      {:error, changeset} -> {:noreply, socket |> assign(:changeset, changeset)}
    end
  end

  @impl true
  def handle_event("on:form:change", _values, socket) do
    {:noreply, socket}
  end

  def handle_event("on:form:submit", values, socket) do

    user = socket.assigns.page.user
    card = socket.assigns.card

    profile = Profiles.Queries.get(id: values["card"]["profiles"], user: user.id)
    old_profile = Profiles.Queries.get(card: card.id, user: user.id) || profile

    case is_nil(profile) || is_nil(old_profile) do
      true -> {:noreply, put_flash(socket, :error, "Profile not found.")}
      false ->
        case Profiles.Commands.remove_card(old_profile.id, %{
          name: old_profile.name,
          avatar_id: old_profile.avatar_id,
          user_id: old_profile.user_id,
          game_id: old_profile.game_id,
          mix_id: old_profile.mix_id
        }) do
          {:ok, _} -> update_card(card, profile, socket)
          {:error, changeset} -> {:noreply, socket |> assign(:changeset, changeset)}
        end
    end
  end

  @impl true
  def mount(params, session, socket) do

    user = Helpers.current_user(session)
    card_id = Map.get(params, "card", 0)
    card = Cards.Queries.get(id: card_id, user: user.id)

    mount(card, user, params, session, socket)
  end

  def mount(nil, _user, _params, _session, socket) do
    {:ok, socket |> redirect(to: Routes.cards_index_path(socket, :index))}
  end

  def mount(card, user, _params, session, socket) do
    profiles = Profiles.Queries.for(user: user.id)
    {:ok, socket
      |> Helpers.init(session)
      |> assign(:page, %{
        title: "Edit",
        breadcrumb: Helpers.crumbs(socket, [:cards, :cards_edit]),
        user: user,
        context: :cards
      })
      |> assign(:card, card)
      |> assign(:profiles, profiles)
      |> assign(:changeset, Cards.Changesets.empty())
    }
  end
end
