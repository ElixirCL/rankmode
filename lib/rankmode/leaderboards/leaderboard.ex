defmodule Rankmode.Leaderboards.Leaderboard do
  use Ecto.Schema
  import Ecto.Changeset

  schema "leaderboards" do
    field :level, :integer
    field :total_kcal, :integer
    field :total_plays, :integer
    field :total_steps, :integer
    field :exp, :integer
    field :pp, :integer
    field :single_score, :integer
    field :double_score, :integer
    field :total_score, :integer
    field :rank_exp, :integer
    field :rank_single, :integer
    field :rank_double, :integer
    field :rank_total, :integer
    timestamps()

    belongs_to :profile, Rankmode.Profiles.Profile
    belongs_to :game, Rankmode.Games.Game
    belongs_to :mix, Rankmode.Mixes.Mix
  end

  @optional [:level, :total_kcal, :total_plays,
            :total_steps, :exp, :pp,
            :single_score, :double_score,
            :total_score, :rank_exp,
            :rank_single, :rank_double,
            :rank_total]

  @required [:profile_id, :game_id, :mix_id]

  def changeset(model, attrs) do
    model
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
  end
end
