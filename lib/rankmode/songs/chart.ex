defmodule Rankmode.Songs.Charts.Chart do
  use Ecto.Schema

  import Ecto.Changeset

  schema "charts" do
    field :name, :string
    field :image, :string
    field :type, :string
    field :difficulty, :integer
    field :stepmaker, :string
    field :meta, :map

    belongs_to :mode, Rankmode.Modes.Mode
    belongs_to :song, Rankmode.Songs.Song
    belongs_to :mix, Rankmode.Mixes.Mix
    belongs_to :game, Rankmode.Games.Game

    timestamps()
  end

  @optional [:stepmaker, :meta]
  @required [:name, :image, :type, :difficulty, :mode_id, :song_id, :mix_id, :game_id]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
  end
end
