defmodule UdemyRealWorldTutorialWeb.PageController do
  use UdemyRealWorldTutorialWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
