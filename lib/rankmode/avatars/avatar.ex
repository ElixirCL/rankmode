defmodule Rankmode.Avatars.Avatar do
  use Ecto.Schema
  import Ecto.Changeset
  schema "avatars" do
    field :name, :string
    field :image, :string
    field :price, :integer
    field :meta, :map
    field :effects, :map
    timestamps()
  end

  @optional [:price, :meta, :effects]
  @required [:name, :image]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
  end
end
