defmodule Rankmode.Repo.Migrations.AddGradesTable do
  use Ecto.Migration

  def change do
    create table(:grades) do
      add :game_id, references(:games, on_delete: :nilify_all)
      add :mix_id, references(:mixes, on_delete: :nilify_all)
      add :name, :string
      add :shortname, :string
      add :image, :string
      timestamps()
    end

    create index(:grades, [:game_id, :mix_id, :name, :shortname])

    alter table(:gameplays) do
      add :grade_id, references(:grades, on_delete: :nilify_all)
    end

    create index(:gameplays, [:grade_id])
  end
end
