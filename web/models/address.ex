defmodule ExAdminDemo.Address do
  use ExAdminDemo.Web, :model

  schema "addresses" do
    field :street, :string
    field :phone_number, :string
    field :type, :string

    belongs_to :user, ExAdminDemo.User

    timestamps
  end

  @required_fields ~w(street phone_number type)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end