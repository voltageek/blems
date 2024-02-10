import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api, ApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "PDB6Ci1DgxB1fuMPe/7Ta0yg8SCe4Zg0k0724p2c3JgdBXtrtRsLxjiALrI06W8L",
  server: false

# In test we don't send emails.
config :api, Api.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :portal, PortalWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "z2HN4DTYl9x+cso0sPQYqRSgua/a8Nsv7dMX/tIH9h2sd0uuhTeGL4y3NSsRng4J",
  server: false

# In test we don't send emails.
config :portal, Portal.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api, ApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "X83UMZRtOrALeAA6wpBeXNGxV947J6pOOYMyZTSGs0vCIWtMid6ynG23l+ITPdXr",
  server: false

# In test we don't send emails.
config :api, Api.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :admin, AdminWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "YzNNP9ZGMn2aVWvOM6r/aXiLvJxgvqhl6p7/hgL7204OlAhqjuNYVBUthup599V8",
  server: false

# In test we don't send emails.
config :admin, Admin.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :blems, Blems.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "blems_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: System.schedulers_online() * 2

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blems_web, BlemsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ww37allQRGEvNyOLAvl6UUkrG4WtzfAVNbiCiYJAtk69XqHD+qfGvBzhpCTR32Vf",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# In test we don't send emails.
config :blems, Blems.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
