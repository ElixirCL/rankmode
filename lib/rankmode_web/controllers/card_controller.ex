defmodule RankmodeWeb.CardController do
  use RankmodeWeb, :controller

  alias Rankmode.Cards
  alias Rankmode.Cards.Card

  action_fallback RankmodeWeb.FallbackController

  def create(conn, %{"card" => card}) do
    attrs = %{
      uid: Map.get(card, "uid", "")
    }
    case Cards.Commands.create(attrs) do
      {:ok, %Card{} = card} -> conn
        |> put_status(:created)
        |> put_resp_header("location", Routes.card_path(conn, :show, card))
        |> render("show.json", card: card)
      {:error, changeset} -> conn
        |> put_status(:bad_request)
        |> render("error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    card = Cards.Queries.get(id: id)
    render(conn, "show.json", card: card)
  end
end
