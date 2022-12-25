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

defmodule Rankmode.Songs.Charts.Rating do
  defstruct ~w(name type image difficulty)a
  alias Rankmode.Songs.Charts.Chart

  def from(%Chart{} = chart) do
    %__MODULE__{
      name: chart.name,
      type: chart.type,
      image: chart.image,
      difficulty: chart.difficulty
    }
  end
end

defmodule Rankmode.Songs.Charts.Queries do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Songs.Charts.Chart
  alias Rankmode.Songs.Charts.Rating

  def get(id: id) do
    from(c in Chart,
      where: c.id == ^id,
      preload: [:mode, :song, :mix, :game])
    |> Repo.one()
  end

  def for(mix: mix_id) do
    from(r in Chart,
        where: r.mix_id == ^mix_id,
        order_by: r.name,
        preload: [:mode, :song, :mix, :game])
      |> Repo.all()
  end

  def for(mix: mix_id, mode: mode_id) do
    from(r in Chart,
        where: r.mix_id == ^mix_id and
          r.mode_id == ^mode_id,
        order_by: r.name,
        preload: [:mode, :song, :mix, :game])
      |> Repo.all()
  end

  def for(mix: mix_id, song: song_id) do
    from(r in Chart,
        where: r.mix_id == ^mix_id and
          r.song_id == ^song_id,
        order_by: r.name,
        preload: [:mode, :song, :mix, :game])
      |> Repo.all()
  end

  def ratings(charts) do
    charts
      |> Enum.uniq_by(&(&1.name))
      |> Enum.map(&(Rating.from(&1)))
      |> Enum.sort_by(&(&1.difficulty))
  end

  def ratings(charts, mode: mode) do
    charts
      |> Enum.filter(&(&1.type == mode.shortname))
      |> Enum.uniq_by(&(&1.name))
      |> Enum.map(&(Rating.from(&1)))
      |> Enum.sort_by(&(&1.difficulty))
  end

  def ratings(ratings, with: difficulty) do
    (ratings
      |> Enum.filter(&(&1.difficulty == String.to_integer(difficulty || "0")))
      |> List.first()) || List.first(ratings)
  end

  def songs(charts) do
    charts
      |> Enum.uniq_by(&(&1.song_id))
      |> Enum.map(&(&1.song))
      |> Enum.sort_by(&(&1.name))
  end

  def modes(charts) do
    charts
      |> Enum.uniq_by(&(&1.mode_id))
      |> Enum.map(&(&1.mode))
      |> Enum.sort_by(&(&1.id))
  end
end
