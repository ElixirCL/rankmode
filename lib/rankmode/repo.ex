defmodule Rankmode.Repo do
  use Ecto.Repo,
    otp_app: :rankmode,
    adapter: Ecto.Adapters.Postgres
end
