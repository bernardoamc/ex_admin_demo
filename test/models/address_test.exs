defmodule ExAdminDemo.AddressTest do
  use ExAdminDemo.ModelCase

  alias ExAdminDemo.Address

  @valid_attrs %{phone_number: "some content", street: "some content", type: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Address.changeset(%Address{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Address.changeset(%Address{}, @invalid_attrs)
    refute changeset.valid?
  end
end
