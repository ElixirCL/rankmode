defmodule Rankmode.Repo.Migrations.AddJudgementsTable do
  use Ecto.Migration

  def change do
    create table(:judgements) do
      add :game_id, references(:games, on_delete: :nilify_all)
      add :mix_id, references(:mixes, on_delete: :nilify_all)
      add :name, :string
      add :shortname, :string
      add :image, :string
      add :sort, :integer, null: false, default: 0
      timestamps()
    end

    create index(:judgements, [:game_id, :mix_id, :name, :shortname])

    alter table(:gameplays) do
      remove :judgement
      add :judgement_id, references(:judgements, on_delete: :nilify_all)
    end

    create index(:gameplays, [:judgement_id])
  end
end
