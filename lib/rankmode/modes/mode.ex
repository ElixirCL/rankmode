defmodule Rankmode.Modes.Mode do
  use Ecto.Schema
  import Ecto.Changeset

  schema "modes" do
    field :name, :string
    field :shortname, :string
    belongs_to :game, Rankmode.Games.Game
    timestamps(updated_at: false)
  end

  @optional []
  @required [:name, :shortname, :game_id]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
    |> unique_constraint(:shortname, name: :modes_shortname_index)
  end
end
