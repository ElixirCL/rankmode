defmodule Rankmode.Mixes.Mix do
  use Ecto.Schema
  import Ecto.Changeset

  schema "mixes" do
    field :uid, :string
    field :name, :string
    field :shortname, :string
    field :number, :integer
    field :url, :string
    field :image, :string
    field :image_small, :string

    belongs_to :game, Rankmode.Games.Game
    timestamps(updated_at: false)
  end

  @optional [:url, :image, :image_small]
  @required [:uid, :name, :shortname, :number, :game_id]

  @doc false
  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
    |> unique_constraint(:uid, name: :mixes_uid_index)
  end
end
