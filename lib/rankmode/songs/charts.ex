defmodule Rankmode.Songs.Charts do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Songs.Charts.Chart

  def all() do
    Repo.all(Chart)
  end

  def get(song: song) do
    Repo.get_by!(Chart, song_id: song)
  end

  def get!(song: song_id, diff: difficulty, type: type) do
    from(c in Chart,
    where: c.song_id == ^song_id and
          c.difficulty == ^difficulty and
          c.type == ^type)
    |> Repo.one!()
  end

  def create_chart(attrs) do
    %Chart{}
    |> Chart.changeset(attrs)
    |> Repo.insert()
  end
end
