defmodule Rankmode.Repo.Migrations.AddGamesTable do
  @moduledoc """
  This table stores the game information (e.g. piu.xx, piu.prime, piu.prime2).
  It is used for profiles. Because one profile belongs to a single game.
  """
  use Ecto.Migration

  def change do

    # Example Pump It Up
    create table(:games) do
      add :uid, :string, null: false
      add :name, :string, null: false
      add :shortname, :string, null: false
      add :url, :string, null: false
      add :image, :string, null: false
      add :image_small, :string, null: false
      timestamps(updated_at: false)
    end

    create unique_index(:games, [:uid])

    # Example PIU XX
    create table(:mixes) do
      add :uid, :string, null: false
      add :name, :string, null: false
      add :shortname, :string, null: false
      add :number, :integer, null: false
      add :url, :string, null: false
      add :image, :string, null: false
      add :image_small, :string, null: false
      add :game_id, references(:games, on_delete: :nothing)
      timestamps(updated_at: false)
    end

    create unique_index(:mixes, [:uid])
    create index(:mixes, [:game_id])
  end
end
