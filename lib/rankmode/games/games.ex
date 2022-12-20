defmodule Rankmode.Games do

  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Games.Game

  def all() do
    Repo.all(Game)
  end

  def get(uid: uid) do
    Repo.get_by!(Game, uid: uid)
  end

  def get(id: id) do
    Repo.get_by(Game, id: id)
  end

  def create_game(attrs) do
    %Game{}
    |> Game.changeset(attrs)
    |> Repo.insert()
  end
end
