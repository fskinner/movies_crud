defmodule MoviesCrud.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string
      add :description, :string
      add :genre, :string

      timestamps()
    end

  end
end
