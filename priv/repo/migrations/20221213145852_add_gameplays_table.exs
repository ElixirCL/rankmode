defmodule Rankmode.Repo.Migrations.AddGameplaysTable do
  use Ecto.Migration

  def change do
    create table(:gameplays) do
      # References
      add :profile_id, references(:profiles, on_delete: :delete_all)
      add :user_id, references(:users, on_delete: :delete_all)
      add :chart_id, references(:charts, on_delete: :delete_all)
      add :song_id, references(:songs, on_delete: :delete_all)

      add :gamecenter_id, references(:gamecenters, on_delete: :nilify_all)
      add :machine_id, references(:machines, on_delete: :nilify_all)
      add :game_id, references(:games, on_delete: :nilify_all)
      add :mix_id, references(:mixes, on_delete: :nilify_all)

      add :leaderboard_id, references(:leaderboards, on_delete: :nilify_all)
      add :card_id, references(:cards, on_delete: :nilify_all)

      # Gameplay Results
      add :marvellous, :integer, null: false, default: 0
      add :perfect, :integer, null: false, default: 0
      add :great, :integer, null: false, default: 0
      add :good, :integer, null: false, default: 0

      add :bad, :integer, null: false, default: 0
      add :miss, :integer, null: false, default: 0
      add :max_combo, :integer, null: false, default: 0

      add :total_score, :integer, null: false, default: 0
      add :total_kcal, :float, null: false, default: 0
      add :judgement, :string, null: false, default: "nj" # nj, hj, vj

      # Automatic Calculations
      add :exp, :integer, null: false, default: 0
      add :pp, :integer, null: false, default: 0
      add :image, :string, null: false, default: "/images/gameplays/no-image.png"
      add :meta, :map
      add :checksum, :string, null: false
      timestamps()
    end

    create unique_index(:gameplays, [:checksum])

    create index(:gameplays, [:profile_id])
    create index(:gameplays, [:machine_id])
    create index(:gameplays, [:game_id])
    create index(:gameplays, [:chart_id])
    create index(:gameplays, [:song_id])
    create index(:gameplays, [:leaderboard_id])
    create index(:gameplays, [:user_id])
    create index(:gameplays, [:card_id])
    create index(:gameplays, [:mix_id])
    create index(:gameplays, [:exp])
    create index(:gameplays, [:pp])
    create index(:gameplays, [:judgement])

  end
end
