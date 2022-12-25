defmodule Rankmode.Judgements do
end

defmodule Rankmode.Judgements.Changesets do
  alias Rankmode.Judgements.Judgement
  def new(attrs) do
    %Judgement{}
    |> Judgement.changeset(attrs)
  end
end

defmodule Rankmode.Judgements.Commands do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Judgements.Changesets

  def create(attrs) do
    Changesets.new(attrs)
    |> Repo.insert()
  end
end

defmodule Rankmode.Judgements.Queries do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Judgements.Judgement

  def all() do
    Repo.all(Judgement)
  end

  def all(in: mix_id) do
    from(j in Judgement,
    where: j.mix_id == ^mix_id,
    preload: [:game, :mix],
    order_by: [:sort])
    |> Repo.all()
  end

  def get(id: id) do
    Repo.get_by(Judgement, id: id)
  end

  def get!(shortname: shortname) do
    Repo.get_by!(Judgement, shortname: shortname)
  end
end
