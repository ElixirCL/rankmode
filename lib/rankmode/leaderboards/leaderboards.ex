defmodule Rankmode.Leaderboards do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Leaderboards.Leaderboard

  def all() do
    Repo.all(Leaderboards)
  end

  def create_leaderboard(attrs) do
    %Leaderboard{}
    |> Leaderboard.changeset(attrs)
    |> Repo.insert()
  end

  @max_level 999
  @level_const 0.04

  defp level(exp) do
    case floor(@level_const * :math.sqrt(exp)) do
      level when level <= @max_level -> level
      _ -> @max_level
    end
  end

  def prepare_update_attrs(profile, gameplay, input) do
    # field :level, :integer
    # field :total_kcal, :integer
    # field :total_plays, :integer
    # field :total_steps, :integer
    # field :exp, :integer
    # field :pp, :integer
    # field :single_score, :integer
    # field :double_score, :integer
    # field :total_score, :integer
    # field :rank_exp, :integer
    # field :rank_single, :integer
    # field :rank_double, :integer
    # field :rank_total, :integer
    %{
      level: level(profile.leaderboard.exp + gameplay.exp),
      total_kcal: profile.leaderboard.total_kcal + gameplay.total_kcal,
      total_plays: profile.leaderbord.total_plays + 1,
      total_steps: profile.leaderboard.total_steps + input.total_steps,
      exp: profile.leaderboard.exp + gameplay.exp,
      pp: profile.leaderboard.pp + gameplay.pp,
    }
  end
end

defmodule Rankmode.Leaderboards.Queries do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Leaderboards.Leaderboard

  def all() do
    Repo.all(Leaderboards)
  end
end

defmodule Rankmode.Leaderboards.Commands do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Leaderboards.Leaderboard

  def update(id, attrs) do
    %Leaderboard{id: id}
    |> Leaderboard.changeset(attrs)
    |> Repo.update()
  end
end
