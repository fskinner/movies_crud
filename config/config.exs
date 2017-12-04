# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :movies_crud,
  ecto_repos: [MoviesCrud.Repo]

# Configures the endpoint
config :movies_crud, MoviesCrudWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6aZ5ZQGstGgYzW+dbHoROLTK9+nGCycL6Lpziq8l2XdV9Zuk2Us3tp5QYDAcng0G",
  render_errors: [view: MoviesCrudWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MoviesCrud.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
