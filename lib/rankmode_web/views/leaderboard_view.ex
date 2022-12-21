defmodule RankmodeWeb.LeaderboardView do

  use RankmodeWeb, :view

  def render("leaderboard.json", %{leaderboard: leaderboard}) do
    %{
      id: leaderboard.id,
      level: leaderboard.level,
      exp: leaderboard.exp,
      pp: leaderboard.pp,
      total_plays: leaderboard.total_plays,
      total_steps: leaderboard.total_steps,
      total_kcal: leaderboard.total_kcal,
      total_score: leaderboard.total_score,
      single_score: leaderboard.single_score,
      double_score: leaderboard.double_score,
      rank_exp: leaderboard.rank_exp,
      rank_single: leaderboard.rank_single,
      rank_double: leaderboard.rank_double,
      rank_total: leaderboard.rank_total,
    }
  end
end
