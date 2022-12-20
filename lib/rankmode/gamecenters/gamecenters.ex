defmodule Rankmode.GameCenters do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.GameCenters.GameCenter

  def all() do
    Repo.all(GameCenter)
  end

  def get(uid: uid) do
    Repo.get_by!(GameCenter, uid: uid)
  end

  def get!(id: id) do
    Repo.get_by!(GameCenter, id: id)
  end

  def create_gamecenter(attrs) do
    %GameCenter{}
    |> GameCenter.changeset(attrs)
    |> Repo.insert()
  end
end
