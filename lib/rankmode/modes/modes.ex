defmodule Rankmode.Modes do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Modes.Mode

  def all() do
    from(m in Mode, order_by: m.id)
    |> Repo.all()
  end

  def get(id: id) do
    Repo.get_by(Mode, id: id)
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
