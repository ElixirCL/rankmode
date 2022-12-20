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
