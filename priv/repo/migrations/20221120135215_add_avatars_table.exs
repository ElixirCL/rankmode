defmodule Rankmode.Repo.Migrations.AddAvatarsTable do
  use Ecto.Migration

  def change do
    create table(:avatars) do
      add :name, :string, null: false
      add :image, :string, null: false
      add :price, :integer, null: false, default: 0
      add :effects, :map, null: false, default: %{exp: 0, pp: 0}
      add :meta, :map, null: false, default: %{
        mix: :none,
        event: false,
        size: %{
          width: 100,
          height: 100
        }
      }
      timestamps()
    end

    create index(:avatars, [:name])
  end
end
