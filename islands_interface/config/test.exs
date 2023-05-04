import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :islands_interface, IslandsInterfaceWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "wnoE5IfBx3syb1BtKpUbKo53zFuV3qqnMivdsu2zuMgLD7GM8KIpDTayrbwjrcKf",
  server: false

# In test we don't send emails.
config :islands_interface, IslandsInterface.Mailer,
  adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
