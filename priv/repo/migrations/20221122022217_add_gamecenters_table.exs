defmodule Rankmode.Repo.Migrations.AddGamecentersTable do
  use Ecto.Migration

  def change do
    create table(:gamecenters) do
      add :name, :string, null: false
      add :uid, :string, null: false
      add :description, :text
      add :contact, :string
      add :image, :string, null: false, default: "images/gamecenters/blank.jpg"
      add :location, :map, null: false, default: %{address: "", latitude: 0, longitude: 0, url: ""}
      timestamps()
    end

    create index(:gamecenters, [:name, :contact, :description, :location])
    create unique_index(:gamecenters, [:uid])

    create table(:machines) do
      add :uid, :string, null: false
      add :name, :string, null: false, default: "Unknown"
      add :image, :string, null: false, default: "images/machines/blank.jpg"
      add :description, :text, null: false, default: "No Description"
      add :version, :string, null: false, default: "latest"
      add :factory_uid, :string, null: false, default: "unknown"
      add :gamecenter_id, references(:gamecenters, on_delete: :delete_all)
      add :game_id, references(:games, on_delete: :nilify_all)
      add :mix_id, references(:mixes, on_delete: :nilify_all)
      timestamps()
    end

    create unique_index(:machines, [:uid])
    create index(:machines, [:name, :description, :version, :gamecenter_id, :factory_uid, :game_id, :mix_id])
  end
end
