defmodule WebAppWeb.PageController do
  use WebAppWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
