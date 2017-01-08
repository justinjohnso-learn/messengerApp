defmodule HelloPhoenix.RegistrationController do
  use HelloPhoenix.Web, :controller
  alias HelloPhoenix.User

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, changeset: changeset
  end

def create(conn, %{"user" => user_params}) do
  changeset = User.changeset(%User{}, user_params)

  case HelloPhoenix.Registration.create(changeset, HelloPhoenix.Repo) do
    {:ok, changeset} ->
      conn
      |> put_session(:current_user, changeset.id)
      |> put_flash(:info, "Your account was created")
      |> redirect(to: "/")
    {:error, changeset} ->
      conn
      |> put_flash(:info, "Unable to create account")
      |> render("new.html", changeset: changeset)
  end
end
end
