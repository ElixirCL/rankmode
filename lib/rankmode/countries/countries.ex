defmodule Rankmode.Countries do

  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Countries.Country

  def all() do
    Repo.all(Game)
  end

  def get(iso: iso) do
    Repo.get_by!(Country, iso: iso)
  end

  def create_country(attrs) do
    %Country{}
    |> Country.changeset(attrs)
    |> Repo.insert()
  end
end
