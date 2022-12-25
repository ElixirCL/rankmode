defmodule Rankmode.Judgements.Judgement do
  use Ecto.Schema
  import Ecto.Changeset

  schema "judgements" do
    field :name, :string
    field :shortname, :string
    field :image, :string
    field :sort, :integer
    belongs_to :game, Rankmode.Games.Game
    belongs_to :mix, Rankmode.Mixes.Mix
    timestamps()
  end

  @optional [:sort]
  @required [:name, :shortname, :image, :game_id, :mix_id]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
  end
end
