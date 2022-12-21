defmodule RankmodeWeb.Helpers do
  alias RankmodeWeb.Router.Helpers, as: Routes

  defp crumbs(socket), do: %{
      profiles: {
        "Profiles",
        Routes.profiles_index_path(socket, :index)
      },
      profiles_new: {
        "New",
        Routes.profiles_new_path(socket, :new)
      },
      profiles_edit: {
        "Edit",
        ""
      },
      profiles_gameplays: {
        "Gameplays",
        ""
      },
      cards: {
        "Cards",
        Routes.cards_index_path(socket, :index)
      },
      cards_activate: {
        "Activate",
        Routes.cards_activate_path(socket, :activate)
      },
      cards_edit: {
        "Edit",
        ""
      }
  }

  def crumbs(socket, items) do
    bread = crumbs(socket)
    items
    |> Enum.map(fn item ->
      Map.get(bread, item)
    end)
  end

  @doc "Common Assigns"
  def init(socket, _session, _params \\ %{}) do
    socket
  end

  def uid() do
    :crypto.strong_rand_bytes(8) |> Base.encode16()
  end

  def current_user(session) do
    Rankmode.Accounts.get_user_by_session_token(session["user_token"])
  end

  def header(conn, keyname) do
    {_k, v} = Enum.filter(conn.req_headers, fn {key, _value} -> key == keyname end)
      |> List.first()
      v || -1
  end
end
