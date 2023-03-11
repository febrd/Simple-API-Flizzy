defmodule ApiFlizzy.Repo.Migrations.CreateUrls do
  use Ecto.Migration

  def change do
    create table(:urls) do
      add :link, :string
      add :title, :string

      timestamps()
    end
  end
end
