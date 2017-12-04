defmodule MoviesCrud.MovieCrud.Movie do
  use Ecto.Schema
  import Ecto.Changeset
  alias MoviesCrud.MovieCrud.Movie


  schema "movies" do
    field :description, :string
    field :genre, :string
    field :title, :string

    timestamps()
  end

  @required_fields ~w(title genre)
  @optional_fields ~w(description)

  @doc false
  def changeset(%Movie{} = movie, attrs) do
    movie
    |> cast(attrs, @required_fields, @optional_fields)
    |> validate_required(@required_fields |>  to_atoms)
    |> validate_length(:title, min: 2, max: 100)
    |> validate_length(:genre, min: 2, max: 50)
  end

  defp to_atoms list do
    list
    |> Enum.map( fn(x) -> String.to_atom(x) end )
  end
end