
defmodule Rankmode.Gameplays.Changesets do
  alias Rankmode.Gameplays.Gameplay

  def new(attrs) do
    %Gameplay{}
    |> Gameplay.changeset(attrs)
  end

  def empty() do
    new(%{})
  end
end

defmodule Rankmode.Gameplays.Commands do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Gameplays.Changesets
  alias Rankmode.Gameplays.Gameplay

  def create(%Ecto.Changeset{} = changeset) do
    Repo.insert(changeset)
  end

  def create(attrs) do
    Changesets.new(attrs)
    |> Repo.insert()
  end

  def delete(id) do
    %Gameplay{id: id}
    |> Repo.delete()
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
      preload: [:user, :game, :mix, :grade, :profile, :song, :chart, :card, :judgement]
    )
    |> Repo.all()
  end
end

defmodule Rankmode.Gameplays do
end
