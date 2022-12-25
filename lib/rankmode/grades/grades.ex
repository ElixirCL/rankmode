defmodule Rankmode.Grades do
end

defmodule Rankmode.Grades.Changesets do
  alias Rankmode.Grades.Grade
  def new(attrs) do
    %Grade{}
    |> Grade.changeset(attrs)
  end
end

defmodule Rankmode.Grades.Commands do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Grades.Changesets

  def create(attrs) do
    Changesets.new(attrs)
    |> Repo.insert()
  end
end

defmodule Rankmode.Grades.Queries do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Grades.Grade

  def all() do
    Repo.all(Grade)
  end

  def all(in: mix_id) do
    from(g in Grade,
    where: g.mix_id == ^mix_id,
    preload: [:game, :mix],
    order_by: [:id])
    |> Repo.all()
  end

  def get(id: grade_id) do
    Repo.get_by(Grade, id: grade_id)
  end

  def get!(shortname: shortname) do
    Repo.get_by!(Grade, shortname: shortname)
  end
end
