use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :switchboard_service, SwitchboardServiceWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :switchboard_service, SwitchboardService.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "switchboard_service_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
