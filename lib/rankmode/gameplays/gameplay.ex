defmodule Rankmode.Gameplays.Gameplay do
  use Ecto.Schema
  import Ecto.Changeset

  schema "gameplays" do

    belongs_to :game, Rankmode.Games.Game
    belongs_to :mix, Rankmode.Mixes.Mix

    belongs_to :user, Rankmode.Accounts.User
    belongs_to :profile, Rankmode.Profiles.Profile
    belongs_to :card, Rankmode.Cards.Card

    belongs_to :gamecenter, Rankmode.GameCenters.GameCenter
    belongs_to :machine, Rankmode.GameCenters.Machines.Machine

    belongs_to :song, Rankmode.Songs.Song
    belongs_to :chart, Rankmode.Songs.Charts.Chart
    belongs_to :leaderboard, Rankmode.Leaderboards.Leaderboard

    field :marvellous, :integer
    field :perfect, :integer
    field :great, :integer
    field :good, :integer
    field :bad, :integer
    field :miss, :integer

    field :max_combo, :integer
    field :total_score, :integer
    field :total_kcal, :float

    field :judgement, :string
    field :grade, :string

    field :exp, :integer
    field :pp, :integer
    field :image, :integer
    field :meta, :map

    field :checksum, :string

    timestamps()
  end

  @optional [:marvellous, :perfect, :great, :good,
            :bad, :miss, :max_combo, :total_score, :total_kcal,
            :judgement, :grade, :exp, :pp, :image, :meta]

  @required [:checksum, :user_id, :mix_id, :game_id, :profile_id, :card_id,
  :gamecenter_id, :machine_id, :song_id, :chart_id,
  :leaderboard_id]

  def changeset(model, attrs) do
    model
    |> cast(transform(attrs), @optional ++ @required)
    |> validate_required(@required)
    |> unique_constraint(:checksum, name: :gameplays_checksum_index)
  end

  defp checksum(attrs) do
    chk = "#{Map.get(attrs, :profile_id, "")}-#{Map.get(attrs, :user_id, "")}-#{Map.get(attrs, :chart_id, "")}-#{Map.get(attrs, :grade, "")}#{:os.system_time(:millisecond)}"
    Map.merge(attrs, %{checksum: Base.encode16(:crypto.hash(:sha256, chk))})
  end

  defp transform(attrs) do
    checksum(attrs)
  end
end
