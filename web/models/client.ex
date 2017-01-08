defmodule HelloPhoenix.Client do
  use HelloPhoenix.Web, :model

  schema "clients" do
    field :email, :string
    field :crypted_password, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :crypted_password])
    |> validate_required([:email, :crypted_password])
    |> unique_constraint(:email)
  end
end
