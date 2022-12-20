defmodule Rankmode.Mixes do

  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Mixes.Mix

  def all() do
    Repo.all(Mix)
  end

  def get(uid: uid) do
    Repo.get_by!(Mix, uid: uid)
  end

  def get(id: id) do
    Repo.get_by(Mix, id: id)
  end

  def get(for: game_id) do
    Repo.all(Mix, game_id: game_id)
  end

  def create_mix(attrs) do
    %Mix{}
    |> Mix.changeset(attrs)
    |> Repo.insert()
  end
end
