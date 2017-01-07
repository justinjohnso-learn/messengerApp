defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
    GeoIP.lookup(conn.peer |> Tuple.to_list |> Enum.join("."))

  end
end
