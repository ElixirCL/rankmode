defmodule Rankmode.Profiles.Queries do
  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Profiles.Profile

  def all() do
    Repo.all(Profile)
    |> Repo.preload([:game, :mix, :avatar, :card])
  end

  def for(user: user_id) do
    from(p in Profile,
      where: p.user_id == ^user_id,
      order_by: [desc: p.inserted_at],
      preload: [:avatar, :game, :mix, :leaderboard, :card]
    )
    |> Repo.all()
  end

  def get(id: profile_id, user: user_id) do
    from(p in Profile,
      where: p.user_id == ^user_id and p.id == ^profile_id,
      preload: [:avatar, :game, :mix, :leaderboard, :card]
    )
    |> Repo.one()
  end

  def get(card: card_id, user: user_id) do
    from(p in Profile,
    where: p.card_id == ^card_id and p.user_id == ^user_id,
    preload: [:avatar, :game, :mix, :leaderboard, :card]
    )
    |> Repo.one()
  end

  def get(id: id) do
    Repo.get_by(Profile, id: id)
    |> Repo.preload([:game, :mix, :avatar, :card, :leaderboard])
  end
end

defmodule Rankmode.Profiles.Changesets do

  alias Rankmode.Profiles.Profile
  alias Ecto.Changeset

  def changeset(attrs) do
    %Profile{}
    |> Profile.changeset(attrs)
  end

  def empty() do
    changeset(%{})
  end

  def update(%Profile{} = profile, attrs \\ %{}) do
    Profile.changeset(profile, attrs)
  end

  def delete(%Profile{} = profile, attrs \\ %{}) do
    %Profile.Delete{
      confirm?: false,
      profile_id: profile.id,
      user_id: profile.user_id
    }
    |> Profile.Delete.changeset(attrs)
  end

  def remove_card(id, attrs) do
    %Profile{id: id}
    |> Profile.changeset(attrs)
    |> Changeset.put_change(:card, nil)
  end
end

defmodule Rankmode.Profiles.Commands do

  import Ecto.Query, warn: false

  alias Rankmode.Repo
  alias Rankmode.Profiles.Profile
  alias Rankmode.Profiles.Changesets

  def create(attrs) do
    %Profile{}
    |> Profile.changeset(attrs)
    |> Repo.insert()
  end

  def update(id, attrs) do
    %Profile{id: id}
    |> Profile.changeset(attrs)
    |> Repo.update()
  end

  def delete(id) do
    %Profile{id: id}
    |> Repo.delete()
  end

  def remove_card(id, attrs) do
    Changesets.remove_card(id, attrs)
    |> Repo.update()
  end
end

defmodule Rankmode.Profiles do
end
