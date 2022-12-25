defmodule Rankmode.GameCenters.Machines do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.GameCenters.Machines.Machine

  def all() do
    Repo.all(Machine)
  end

  def get(uid: uid) do
    Repo.get_by!(Machine, uid: uid)
  end

  def get!(id: id) do
    Repo.get_by!(Machine, id: id)
  end

  def create_machine(attrs) do
    %Machine{}
    |> Machine.changeset(attrs)
    |> Repo.insert()
  end
end

defmodule Rankmode.GameCenters.Machines.Queries do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.GameCenters.Machines.Machine

  def for(center: gamecenter_id) do
    from(m in Machine,
      where: m.gamecenter_id == ^gamecenter_id,
      preload: [:game, :mix])
    |> Repo.all()
  end

  def get(id: id) do
    Repo.get_by(Machine, id: id)
  end
end
