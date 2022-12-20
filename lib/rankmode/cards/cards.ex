defmodule Rankmode.Cards.Queries do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Cards.Card

  def all() do
    Repo.all(Card)
    |> Repo.preload([:user, :game, :mix])
  end

  def for(user: user_id) do
    from(c in Card,
      where: c.user_id == ^user_id,
      order_by: [desc: c.activated_at],
      preload: [:user, :game, :mix, :profile])
    |> Repo.all()
  end

  def get!(uid: uid) do
    from(c in Card, where: c.uid == ^uid,
      preload: [:user, :game, :mix, :profile]
    )
    |> Repo.one!()
  end

  def get(uid: uid) do
    from(c in Card, where: c.uid == ^uid,
      preload: [:user, :game, :mix, :profile]
    )
    |> Repo.one()
  end

  def get(id: card_id, user: user_id) do
    from(c in Card,
      where: c.id == ^card_id and c.user_id == ^user_id,
      preload: [:user, :game, :mix, :profile]
    )
    |> Repo.one()
  end

  def get(:notactivated, uid: uid) do
    from(c in Card,
      where: c.uid == ^uid and
        is_nil(c.activated_at) and
        is_nil(c.user_id),
      preload: [:user, :game, :mix]
    )
    |> Repo.one()
  end
end

defmodule Rankmode.Cards.Changesets do
  alias Rankmode.Cards.Card

  def new(attrs) do
    %Card{}
    |> Card.changeset(attrs)
  end

  def empty() do
    new(%{})
  end

  def activate(id, attrs) do
    %Card{id: id}
    |> Card.changeset_activate(attrs)
  end

  def update(id, attrs) do
    %Card{id: id}
    |> Card.changeset(attrs)
  end
end

defmodule Rankmode.Cards.Commands do

  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Cards.Changesets

  def create(attrs) do
    Changesets.new(attrs)
    |> Repo.insert()
  end

  def activate(id, attrs) do
    Changesets.activate(id, attrs)
    |> Repo.update()
  end

  def update(id, attrs) do
    Changesets.update(id, attrs)
    |> Repo.update()
  end
end

defmodule Rankmode.Cards do
end
