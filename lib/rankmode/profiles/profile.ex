defmodule Rankmode.Profiles.Profile.Delete do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :confirm?, :boolean
    field :profile_id, :integer
    field :user_id, :integer
  end

  @optional []
  @required [:confirm?, :profile_id, :user_id]

  def changeset(struct, attrs) do
    struct
    |> cast(attrs, @optional ++ @required)
    |> validate_required(@required)
  end
end

defmodule Rankmode.Profiles.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "profiles" do
    field :name, :string
    has_one :leaderboard, Rankmode.Leaderboards.Leaderboard
    belongs_to :card, Rankmode.Cards.Card
    belongs_to :avatar, Rankmode.Avatars.Avatar
    belongs_to :mix, Rankmode.Mixes.Mix
    belongs_to :game, Rankmode.Games.Game
    belongs_to :user, Rankmode.Accounts.User
    timestamps()
  end

  @optional [:card_id]
  @required [:name, :user_id, :avatar_id, :mix_id, :game_id]

  def changeset(struct, attrs) do
    struct
    |> cast(transform(attrs), @optional ++ @required)
    |> validate_required(@required)
    |> validate_length(:name, min: 3, max: 15)
    |> unique_constraint(:name, name: :profiles_name_index)
  end

  defp transform(attrs) do
    name = String.upcase(Map.get(attrs, :name, ""))
        |> String.trim()
        |> String.replace(~r/[[:blank:]]*/, "")
        |> String.replace(~r/[^[:alnum:]♥_]*/iu, "")

    Map.merge(attrs, %{ name: name })
  end
end
