defmodule ExAdminDemo.Repo.Migrations.CreateAddress do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :street, :string
      add :phone_number, :string
      add :type, :string

      timestamps
    end

  end
end
