defmodule RankmodeWeb.PageController do
  use RankmodeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
