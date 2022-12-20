defmodule Rankmode.Games.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "games" do
    field :uid, :string
    field :name, :string
    field :shortname, :string
    field :url, :string
    field :image, :string
    field :image_small, :string
    timestamps(updated_at: false)
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:uid, :name, :shortname, :url, :image, :image_small])
    |> validate_required([:uid, :name])
  end
end
