defmodule Rankmode.Repo.Migrations.AddMarvellousTimingToMixTable do
  use Ecto.Migration

  def change do
    alter table(:mixes) do
      add :marvellous_timing?, :boolean, null: false, default: false
    end
  end
end
