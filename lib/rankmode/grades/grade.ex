defmodule Rankmode.Grades.Grade do
  use Ecto.Schema
  import Ecto.Changeset

  schema "grades" do
    field :name, :string
    field :shortname, :string
    field :image, :string
    belongs_to :game, Rankmode.Games.Game
    belongs_to :mix, Rankmode.Mixes.Mix
    timestamps()
  end

  @optional [:name, :shortname, :image, :game_id, :mix_id]
  @required []

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
  end
end
