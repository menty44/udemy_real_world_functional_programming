defmodule UdemyRealWorldTutorialWeb.HelloController do
  use UdemyRealWorldTutorialWeb, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Hello World!")
    |> assign(:message, "Hello World from assigns!")
    |> render("index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end
end