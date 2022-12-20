defmodule Rankmode.Cards.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :uid, :string
    field :checksum, :string
    field :activated_at, :naive_datetime
    belongs_to :mix, Rankmode.Mixes.Mix
    belongs_to :game, Rankmode.Games.Game
    belongs_to :user, Rankmode.Accounts.User
    has_one :profile, Rankmode.Profiles.Profile
    timestamps()
  end

  @optional [:activated_at, :user_id, :mix_id, :game_id]
  @required [:uid, :checksum]

  def changeset(model, attrs) do
    model
    |> cast(transform(attrs), @optional ++ @required)
    |> validate_required(@required)
    |> validate_length(:uid, min: 3, max: 255)
    |> unique_constraint(:uid, name: :cards_uid_checksum_index)
    |> unique_constraint(:checksum, name: :cards_uid_checksum_index)
  end

  def changeset_activate(model, attrs) do
    changeset(model, activate(attrs))
  end

  defp checksum(attrs) do
    Map.merge(attrs, %{checksum: Base.encode16(:crypto.hash(:sha256, Map.get(attrs, :uid, "")))})
  end

  defp activate(attrs) do
    Map.merge(attrs, %{activated_at: NaiveDateTime.utc_now()})
  end

  defp transform(attrs) do
    checksum(attrs)
  end
end
