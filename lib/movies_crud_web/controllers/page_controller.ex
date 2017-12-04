defmodule MoviesCrudWeb.PageController do
  use MoviesCrudWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
