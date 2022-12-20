defmodule Rankmode.Modes do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Modes.Mode

  def all() do
    Repo.all(Mode)
  end

  def get(shortname: shortname) do
    Repo.get_by!(Mode, shortname: shortname)
  end

  def create_mode(attrs) do
    %Mode{}
    |> Mode.changeset(attrs)
    |> Repo.insert()
  end
end
