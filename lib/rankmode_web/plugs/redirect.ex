defmodule RankmodeWeb.Plug.Redirect do
  @moduledoc """
  A Plug to allow for easily doing redirects within a Plug or Phoenix router.

  Based on code found at:
    - https://www.viget.com/articles/how-to-redirect-from-the-phoenix-router/
    - https://raw.githubusercontent.com/UrbanOS-Public/smartcitiesdata/master/apps/andi/lib/andi_web/plugs/redirect.ex
    - https://elixirforum.com/t/phoenix-redirects-in-router-file/26733/5
  """

  def init(opts) do
    if Keyword.has_key?(opts, :to) do
      opts
    else
      raise("Missing required option ':to' in redirect")
    end
  end

  def call(conn, opts) do
    conn
    |> Phoenix.Controller.redirect(opts)
  end
end
