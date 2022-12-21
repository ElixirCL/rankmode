defmodule RankmodeWeb.GameplayView do
  use RankmodeWeb, :view
  alias RankmodeWeb.GameplayView
  alias RankmodeWeb.LeaderboardView

  def render("index.json", %{gameplays: gameplays}) do
    %{data: render_many(gameplays, GameplayView, "gameplay.json")}
  end

  def render("show.json", %{gameplay: gameplay, leaderboard: leaderboard, input: input}) do
    %{data: %{
        profile: %{
          id: gameplay.profile_id
        },
        song: %{
          id: input.song.id,
          name: input.song.name
        },
        gameplay: render_one(gameplay, GameplayView, "gameplay.json"),
        leaderboard: render_one(leaderboard, LeaderboardView, "leaderboard.json")
      }
    }
  end

  def render("gameplay.json", %{gameplay: gameplay}) do
    %{
      id: gameplay.id,
      exp: gameplay.exp,
      pp: gameplay.pp
    }
  end

  def render("error.json", %{changeset: changeset}) do
    %{errors: Ecto.Changeset.traverse_errors(changeset, &translate_error/1)}
  end

  def render("error.json", %{messages: messages}) do
    %{errors: messages}
  end
end
