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

  def get!(shortname: shortname) do
    Repo.get_by!(Grade, shortname: shortname)
  end
end
