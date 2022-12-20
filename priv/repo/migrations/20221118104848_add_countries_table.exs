defmodule Rankmode.Repo.Migrations.AddCountriesTable do
  use Ecto.Migration

  def change do
    create table(:countries) do
      add :name, :string, null: false
      add :iso, :string, null: false
      add :image, :string, null: false
      timestamps(updated_at: false)
    end

    create unique_index(:countries, [:iso])

    alter table(:users) do
      add :country_id, references(:countries, on_delete: :nothing)
    end

    create index(:users, [:country_id])
  end
end
