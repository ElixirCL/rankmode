defmodule Rankmode.GameCenters.GameCenter do
  use Ecto.Schema
  import Ecto.Changeset

  schema "gamecenters" do
    field :uid, :string
    field :name, :string
    field :description, :string
    field :image, :string
    field :contact, :string
    field :location, :map
    timestamps()
  end

  @optional [:description, :image, :location, :contact]
  @required [:uid, :name]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
    |> unique_constraint(:uid, name: :gamecenters_uid_index)
  end
end
