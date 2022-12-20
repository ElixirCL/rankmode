defmodule Rankmode.GameCenters.Machines.Machine do
  use Ecto.Schema
  import Ecto.Changeset

  schema "machines" do
    field :uid, :string
    field :name, :string
    field :image, :string
    field :description, :string
    field :version, :string
    field :factory_uid, :string

    belongs_to :game, Rankmode.Games.Game
    belongs_to :gamecenter, Rankmode.GameCenters.GameCenter
    belongs_to :mix, Rankmode.Mixes.Mix

    timestamps()
  end

  @optional [:description, :image]
  @required [:name, :uid, :version, :factory_uid, :gamecenter_id, :game_id, :mix_id]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
    |> unique_constraint(:uid, name: :machines_uid_index)
  end
end
