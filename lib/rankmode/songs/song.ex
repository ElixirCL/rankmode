defmodule Rankmode.Songs.Song do
  use Ecto.Schema
  import Ecto.Changeset

  schema "songs" do
    field :name, :string
    field :image, :string
    field :category, :string
    field :cut, :string
    field :number, :integer
    field :titles, :map
    field :meta, :map

    belongs_to :game, Rankmode.Games.Game

    timestamps()
  end

  @optional [:titles, :meta]
  @required [:name, :image, :category, :cut, :number, :game_id]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
    |> unique_constraint(:number, name: :songs_number_index)
  end
end
