defmodule MyPlug do
  import Plug.Conn

  def init(options) do
    # initialize options

    options
  end

  def call(conn, _opts) do
    # conn.remote_ip
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello world")
    # |> json(conn.remote_ip)
  end
end
