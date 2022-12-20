defmodule Rankmode.Countries.Country do
  use Ecto.Schema
  import Ecto.Changeset

  schema "countries" do
    field :name, :string
    field :iso, :string
    field :image, :string

    timestamps(updated_at: false)
  end

  @optional []
  @required [:name, :iso, :image]

  @doc false
  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
    |> unique_constraint(:iso, name: :countries_iso_index)
  end
end
