defmodule Rankmode.Songs do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Songs.Song

  def all() do
    Repo.all(Song)
  end

  def get!(name: name) do
    Repo.get_by!(Song, name: name)
  end

  def get(number: number) do
    Repo.get_by!(Song, number: number)
  end

  def create_song(attrs) do
    %Song{}
    |> Song.changeset(attrs)
    |> Repo.insert()
  end
end

defmodule Rankmode.Songs.Queries do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Songs.Song

  def get!(id: id) do
    Repo.get_by!(Song, id: id)
  end
end
