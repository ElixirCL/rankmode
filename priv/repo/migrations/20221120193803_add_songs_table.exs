defmodule Rankmode.Repo.Migrations.AddSongsTable do
  use Ecto.Migration

  def change do
    create table(:songs) do
        add :name, :string, null: false
        add :image, :string, null: false
        add :category, :string, null: false
        add :cut, :string, null: false
        add :number, :integer, null: false
        add :titles, :map, null: false, default: %{}
        add :game_id, references(:games, on_delete: :delete_all), null: false
        add :meta, :map, null: false, default: %{}
        timestamps()
    end

    create index(:songs, [:name, :meta, :titles, :game_id])
    create unique_index(:songs, [:number])

    # Single, Double, etc
    create table(:modes) do
      add :name, :string, null: false
      add :shortname, :string, null: false
      add :game_id, references(:games, on_delete: :delete_all), null: false
      timestamps(updated_at: false)
    end

    create unique_index(:modes, [:shortname])
    create index(:modes, [:name, :game_id])

    create table(:charts) do
      add :name, :string, null: false
      add :image, :string, null: false
      add :type, :string, null: false
      add :difficulty, :integer, null: false, default: 0
      add :stepmaker, :string, null: false, default: "Unknown"
      add :mode_id, references(:modes, on_delete: :delete_all)
      add :song_id, references(:songs, on_delete: :delete_all)
      add :mix_id, references(:mixes, on_delete: :delete_all)
      add :game_id, references(:games, on_delete: :delete_all)
      add :meta, :map, null: false, default: %{}
      timestamps()
    end

    create index(:charts, [:name, :song_id, :game_id, :mix_id, :mode_id, :meta])
  end
end
