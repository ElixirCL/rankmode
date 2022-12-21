
defmodule Rankmode.Gameplays.Changesets do
  alias Rankmode.Gameplays.Gameplay

  def new(attrs) do
    %Gameplay{}
    |> Gameplay.changeset(attrs)
  end
end

defmodule Rankmode.Gameplays.Commands do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Gameplays.Changesets

  def create(attrs) do
    Changesets.new(attrs)
    |> Repo.insert()
  end
end

defmodule Rankmode.Gameplays.Queries do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Gameplays.Gameplay

  def all() do
    Repo.all(Gameplay)
  end

  def get!(id: id) do
    Repo.get_by(Gameplay, id: id)
  end

  def for(profile: profile_id) do
    from(g in Gameplay,
      where: g.profile_id == ^profile_id,
      order_by: [desc: g.inserted_at],
      preload: [:user, :game, :mix, :grade, :profile, :song, :chart, :card]
    )
    |> Repo.all()
  end
end

defmodule Rankmode.Gameplays.Calculator.Input do
  defstruct ~w(marvellous perfect great good bad miss max_combo total_steps accuracy total_score total_kcal judgement judgement_map grade grade_map chart chart_map song card)a

  def from(params: params, card: card, song: song, chart: chart, grade: grade) do
    total_steps = total_steps(steps(params))
    %__MODULE__{
      marvellous: Map.get(params, "marvellous", 0),
      perfect: Map.get(params, "perfect", 0),
      great: Map.get(params, "great", 0),
      good: Map.get(params, "good", 0),
      bad: Map.get(params, "bad", 0),
      miss: Map.get(params, "miss", 0),
      max_combo: Map.get(params, "max_combo", 0),
      total_score: Map.get(params, "total_score", 0),
      total_kcal: Map.get(params, "total_kcal", 0),
      judgement: String.downcase(Map.get(params, "judgement", "nj")),
      judgement_map: %{
        name: String.downcase(Map.get(params, "judgement", "nj")),
        value: judgement(params)
      },
      grade: grade.id,
      grade_map: %{
        name: String.downcase(Map.get(params, "grade", "ff")),
        value: grade(params)
      },
      song: song,
      card: card,
      chart: chart,
      chart_map: %{
        data: chart,
        value: type(chart)
      },
      total_steps: total_steps,
      accuracy: accuracy(steps(params), total_steps)
    }
  end

  defp grade(params) do
    case String.downcase(Map.get(params, "grade", "f")) do
      "sss" -> 13
      "ss" -> 12
      "s" -> 11
      "a" -> 10
      "fa" -> 9
      "b" -> 8
      "c" -> 8
      "d" -> 7
      "f" -> 6
      _ -> 5
    end
  end

  defp judgement(params) do
    case String.downcase(Map.get(params, "judgement", "nj")) do
      "vj" -> 10 # Very Hard Judgement
      "hj" -> 9 # Hard Judgement
      "nj" -> 8 # Normal Judgement
      "ej" -> 7 # Easy Judgement
      _ -> 6 # Other
    end
  end

  defp type(chart) do
    case String.downcase(chart.type) do
      "s" -> 5 # Single
      "d" -> 6 # Double
      "sp" -> 4 # Single Perfomance
      "dp" -> 3 # Double Perfomance
      "c" -> 7 # Co-Op
      "r" -> 8 # Routine
      "hdb" -> 5 # Half Double
      _ -> 1 # Other
    end
  end

  defp steps(params) do
    %{
      marvellous: Map.get(params, "marvellous", 0),
      perfect: Map.get(params, "perfect", 0),
      great: Map.get(params, "great", 0),
      good: Map.get(params, "good", 0),
      bad: Map.get(params, "bad", 0),
      miss: Map.get(params, "miss", 0),
      max_combo: Map.get(params, "max_combo", 0)
    }
  end

  defp total_steps(steps) do
    case steps.marvellous +
    steps.perfect +
    steps.great +
    steps.good +
    steps.bad +
    steps.miss do
      count when count > 0 -> count
      _ -> 1
    end
  end

  defp accuracy(steps, total_steps) do
    (steps.marvellous * 1.5 +
      steps.perfect * 1.2 +
      steps.great * 0.9 +
      steps.good * 0.6 +
      steps.max_combo * 0.05 - (
      steps.bad * 0.45 +
      steps.miss * 0.9)) / (total_steps * 100)
  end
end

defmodule Rankmode.Gameplays.Calculator do

  alias __MODULE__.Input

  # TODO: Consider User's Profile Avatar in Calculations for EXP and PP
  def exp(%Input{} = input, "piu.xx") do
    ceil(((input.total_steps / 1000) + (input.grade_map.value + input.judgement_map.value + input.chart_map.value) * input.chart.difficulty) + (input.accuracy * 100)) + 10
  end

  def pp(%Input{} = input, "piu.xx") do
    ceil((input.total_steps / 1000) + ((input.total_score * input.accuracy) + ((input.grade_map.value + input.judgement_map.value + input.grade_map.value) * input.chart.difficulty)) / 1000) + 10
  end
end

defmodule Rankmode.Gameplays do
end
