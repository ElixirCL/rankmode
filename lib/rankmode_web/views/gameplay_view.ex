defmodule RankmodeWeb.GameplayView do
  use RankmodeWeb, :view
  alias RankmodeWeb.GameplayView

  def render("index.json", %{gameplays: gameplays}) do
    %{data: render_many(gameplays, GameplayView, "gameplay.json")}
  end

  def render("show.json", %{gameplay: gameplay, leaderboard: leaderboard}) do
    %{data: %{
        gameplay: render_one(gameplay, GameplayView, "gameplay.json"),
        leaderboard: render_one(leaderboard, GameplayView, "leaderboard.json")
      }
    }
  end

  def render("gameplay.json", %{gameplay: gameplay}) do
    %{
      id: gameplay.id
    }
  end

  def render("leaderboard.json", %{leaderboard: leaderboard}) do
    %{
      id: leaderboard.id
    }
  end

  def render("error.json", %{changeset: changeset}) do
    %{errors: Ecto.Changeset.traverse_errors(changeset, &translate_error/1)}
  end

  def render("error.json", %{messages: messages}) do
    %{errors: messages}
  end
end
