defmodule Rankmode.Repo.Migrations.AddProfilesTable do
  use Ecto.Migration

  def change do

    create table(:cards) do
      add :uid, :string, null: false
      add :checksum, :string, null: false
      add :user_id, references(:users, on_delete: :nilify_all)
      add :mix_id, references(:mixes, on_delete: :nilify_all)
      add :game_id, references(:games, on_delete: :nilify_all)
      add :activated_at, :naive_datetime
      timestamps()
    end

    create unique_index(:cards, [:uid, :checksum])
    create index(:cards, [:user_id, :mix_id, :game_id])

    create table(:profiles) do
      add :name, :string, null: false
      add :card_id, references(:cards, on_delete: :nilify_all)
      add :avatar_id, references(:avatars, on_delete: :nilify_all)
      add :mix_id, references(:mixes, on_delete: :nilify_all)
      add :game_id, references(:games, on_delete: :nilify_all)
      add :user_id, references(:users, on_delete: :delete_all)
      timestamps()
    end

    create unique_index(:profiles, [:name])
    create index(:profiles, [:avatar_id, :card_id, :mix_id, :game_id, :user_id])

    create table(:leaderboards) do
      add :profile_id, references(:profiles, on_delete: :delete_all)
      add :game_id, references(:games, on_delete: :nilify_all)
      add :mix_id, references(:mixes, on_delete: :nilify_all)
      add :level, :integer, null: false, default: 1
      add :total_kcal, :integer, null: false, default: 0
      add :total_plays, :integer, null: false, default: 0
      add :total_steps, :integer, null: false, default: 0
      add :exp, :integer, null: false, default: 0
      add :pp, :integer, null: false, default: 0
      add :single_score, :integer, null: false, default: 0
      add :double_score, :integer, null: false, default: 0
      add :total_score, :integer, null: false, default: 0
      add :rank_exp, :integer, null: false, default: 0
      add :rank_single, :integer, null: false, default: 0
      add :rank_double, :integer, null: false, default: 0
      add :rank_total, :integer, null: false, default: 0
      timestamps()
    end

    create index(:leaderboards, [:profile_id, :game_id, :mix_id])

  end
end
