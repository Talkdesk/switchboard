# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :switchboard_service,
  namespace: SwitchboardService,
  ecto_repos: [SwitchboardService.Repo]

# Configures the endpoint
config :switchboard_service, SwitchboardServiceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ADboH5+GtN2z221lnf1NJSHVBO5H5CAYONxZZOsjdQozE4GOuJg5O26/RHDogt+r",
  render_errors: [view: SwitchboardServiceWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SwitchboardService.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
