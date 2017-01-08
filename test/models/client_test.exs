defmodule HelloPhoenix.ClientTest do
  use HelloPhoenix.ModelCase

  alias HelloPhoenix.Client

  @valid_attrs %{crypted_password: "some content", email: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Client.changeset(%Client{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Client.changeset(%Client{}, @invalid_attrs)
    refute changeset.valid?
  end
end
