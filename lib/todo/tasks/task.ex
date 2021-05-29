defmodule Todo.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :title, :string
    field :done, :boolean, default: false

    timestamps()
  end

  def changeset(task, params \\ %{}) do
    task
    |> cast(task, [:title, :done])
    |> validate_required([:title, :done])
  end
end
