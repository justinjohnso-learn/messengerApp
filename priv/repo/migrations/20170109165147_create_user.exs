defmodule HelloPhoenix.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :crypted_password, :string
      add :password, :string, virtual: true
      timestamps
    end
    create unique_index(:users, [:email])

  end
end
