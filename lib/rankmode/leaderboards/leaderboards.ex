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
    case floor(@level_const * :math.sqrt(exp)) - 1 do
      level when level <= 0 -> 1
      level when level < @max_level -> level
      _ -> @max_level
    end
  end

  def prepare_update_attrs(profile, gameplay, input) do
    Map.merge(%{
      profile_id: profile.id,
      game_id: profile.game_id,
      mix_id: profile.mix_id,
      grade_id: gameplay.grade_id,
      level: level(profile.leaderboard.exp + gameplay.exp),
      total_kcal: profile.leaderboard.total_kcal + gameplay.total_kcal,
      total_plays: profile.leaderboard.total_plays + 1,
      total_steps: profile.leaderboard.total_steps + input.total_steps,
      exp: profile.leaderboard.exp + gameplay.exp,
      pp: profile.leaderboard.pp + gameplay.pp,
      single_score: profile.leaderboard.single_score,
      double_score: profile.leaderboard.double_score,
      total_score: profile.leaderboard.total_score,
      rank_exp: profile.leaderboard.rank_exp,
      rank_single: profile.leaderboard.rank_single,
      rank_double: profile.leaderboard.rank_double,
      rank_total: profile.leaderboard.rank_total
    }, scores(profile, gameplay, input.chart.type, input.judgement))
  end

  defp scores(profile, gameplay, "S", "vj") do
    %{
      single_score: profile.leaderboard.single_score + gameplay.total_score,
      rank_single: profile.leaderboard.rank_single + gameplay.total_score,
      rank_total: profile.leaderboard.rank_total + gameplay.total_score,
      rank_exp: profile.leaderboard.rank_exp + gameplay.exp
    }
  end

  defp scores(profile, gameplay, "D", "vj") do
    %{
      double_score: profile.leaderboard.single_score + gameplay.total_score,
      rank_double: profile.leaderboard.rank_double + gameplay.total_score,
      rank_total: profile.leaderboard.rank_total + gameplay.total_score,
      rank_exp: profile.leaderboard.rank_exp + gameplay.exp
    }
  end

  defp scores(profile, gameplay, "S", _judgement) do
    %{
      single_score: profile.leaderboard.single_score + gameplay.total_score
    }
  end

  defp scores(profile, gameplay, "D", _judgement) do
    %{
      double_score: profile.leaderboard.single_score + gameplay.total_score
    }
  end

  defp scores(profile, gameplay, "SP", _judgement) do
    %{
      single_score: profile.leaderboard.single_score + gameplay.total_score
    }
  end

  defp scores(profile, gameplay, "DP", _judgement) do
    %{
      double_score: profile.leaderboard.single_score + gameplay.total_score
    }
  end

  # Other modes like Co-Op
  defp scores(_profile, _gameplay, _mode, _judgement) do
    %{}
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
