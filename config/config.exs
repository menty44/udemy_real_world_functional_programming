# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :udemy_real_world_tutorial,
  ecto_repos: [UdemyRealWorldTutorial.Repo]

# Configures the endpoint
config :udemy_real_world_tutorial, UdemyRealWorldTutorialWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wxkoEISATceYBU9zCuKcul+fOv+iCydZ90NOqx6MZQgpg/qrblq2OiPmf6qhepi2",
  render_errors: [view: UdemyRealWorldTutorialWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: UdemyRealWorldTutorial.PubSub,
  live_view: [signing_salt: "jNHFuYHF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
