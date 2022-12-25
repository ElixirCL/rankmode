defmodule Rankmode.Gameplays.Calculator.Input.Piu.Xx do
  def grade(input, grade) do
    value = case grade.shortname do
      "3s" -> 13
      "f3s" -> 10
      "2s" -> 12
      "f2s" -> 9
      "1s" -> 11
      "f1s" -> 8
      "a" -> 10
      "fa" -> 9
      "b" -> 8
      "fb" -> 7
      "c" -> 8
      "fc" -> 6
      "d" -> 7
      "fd" -> 5
      "f" -> 6
      "ff" -> 4
      _ -> 3
    end
    Map.merge(input, %{grade: value})
  end

  def judgement(input, judgement) do
    value = case judgement.shortname do
      "vj" -> 10 # Very Hard Judgement
      "hj" -> 9 # Hard Judgement
      "nj" -> 8 # Normal Judgement
      "ej" -> 7 # Easy Judgement
      _ -> 6 # Other
    end
    Map.merge(input, %{judgement: value})
  end

  def chart(input, chart) do
    type = case chart.type do
      "s" -> 5 # Single
      "d" -> 6 # Double
      "sp" -> 4 # Single Perfomance
      "dp" -> 3 # Double Perfomance
      "c" -> 7 # Co-Op
      "r" -> 8 # Routine
      "hdb" -> 5 # Half Double
      _ -> 1 # Other
    end

    Map.merge(input, %{chart: %{
      type: type,
      difficulty: chart.difficulty
    }})
  end

  def accuracy(input) do
    total = case input.total_steps do
      total when total > 0 -> total * 100
      _ -> 1000
    end
    accuracy = (input.marvellous * 1.5 + input.perfect * 1.2 + input.great * 0.9 + input.good * 0.6 + input.max_combo * 0.05 - (input.bad * 0.45 + input.miss * 0.9)) / total
    Map.merge(input, %{accuracy: accuracy})
  end
end

defmodule Rankmode.Gameplays.Calculator.Input.Steps do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :marvellous, :integer
    field :perfect, :integer
    field :great, :integer
    field :good, :integer
    field :bad, :integer
    field :miss, :integer
    field :max_combo, :integer
    field :total_score, :integer
    field :total_kcal, :float
  end

  @optional []
  @required [:marvellous, :perfect, :great, :good,
            :bad, :miss, :max_combo, :total_score,
            :total_kcal]

  def changeset(struct, attrs) do
    struct
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
  end

  def validate(attrs) do
    changeset(%__MODULE__{}, attrs)
    |> Map.put(:action, :insert)
  end

  def to_map(changeset) do
    %{
      marvellous: get_field(changeset, :marvellous) || 0,
      perfect: get_field(changeset, :perfect) || 0,
      great: get_field(changeset, :great) || 0,
      good: get_field(changeset, :good) || 0,
      bad: get_field(changeset, :bad) || 0,
      miss: get_field(changeset, :miss) || 0,
      max_combo: get_field(changeset, :max_combo) || 0,
      total_score: get_field(changeset, :total_score) || 0,
      total_kcal: get_field(changeset, :total_kcal) || 0
    }
  end

  def from(values) do
    %{
      marvellous: Map.get(values, "marvellous", 0),
      perfect: Map.get(values, "perfect", 0),
      great: Map.get(values, "great", 0),
      good: Map.get(values, "good", 0),
      bad: Map.get(values, "bad", 0),
      miss: Map.get(values, "miss", 0),
      max_combo: Map.get(values, "max_combo", 0),
      total_score: Map.get(values, "total_score", 0),
      total_kcal: Map.get(values, "total_kcal", 0),
    }
    |> validate()
    |> to_map()
  end
end

defmodule Rankmode.Gameplays.Calculator.Input do
  alias Rankmode.Gameplays.Calculator.Input.Piu
  alias Rankmode.Gameplays.Calculator.Input.Steps

  def from(profile, chart, grade, judgement, values, mix_uid) do

    Map.merge(Steps.from(values), %{
      avatar: %{
        pp: Map.get(profile.avatar.effects, "pp", 0),
        exp: Map.get(profile.avatar.effects, "exp", 0)
      }
    })
    |> total_steps()
    |> mix(chart, grade, judgement, mix_uid)
  end

  defp total_steps(input) do
    Map.merge(input, %{
      total_steps: input.marvellous + input.perfect + input.great + input.good + input.bad + input.miss
    })
  end

  defp mix(input, chart, grade, judgement, "piu.xx") do
    Piu.Xx.accuracy(input)
    |> Piu.Xx.judgement(judgement)
    |> Piu.Xx.grade(grade)
    |> Piu.Xx.chart(chart)
  end
end

defmodule Rankmode.Gameplays.Calculator do
  def exp(input, "piu.xx") do
    case input.total_steps do
      steps when steps > 0 ->
        total = ceil(((input.total_steps / 1000) + (input.grade + input.judgement + input.chart.type) * input.chart.difficulty) + (input.accuracy * 100)) + 10
        total + (input.avatar.exp * total)
      _ -> 0
    end
  end

  def pp(input, "piu.xx") do
    case input.total_steps do
      steps when steps > 0 ->
        total = ceil((input.total_steps / 1000) + ((input.total_score * input.accuracy) + ((input.grade + input.judgement + input.chart.type) * input.chart.difficulty)) / 1000) + 10
        total + (input.avatar.pp * total)
      _ -> 0
    end
  end
end
