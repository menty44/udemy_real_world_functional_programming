defmodule UdemyRealWorldTutorial.Repo do
  use Ecto.Repo,
    otp_app: :udemy_real_world_tutorial,
    adapter: Ecto.Adapters.Postgres
end
