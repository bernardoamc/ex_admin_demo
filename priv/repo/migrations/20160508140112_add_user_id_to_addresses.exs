defmodule ExAdminDemo.Repo.Migrations.AddUserIdToAddresses do
  use Ecto.Migration

  def change do
    alter table(:addresses) do
      add :user_id, :integer, null: false
    end

    create index(:addresses, [:user_id])
  end
end
