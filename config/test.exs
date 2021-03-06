import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blog, BlogWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "nC4i6da0OvUreuel+Ss6eJE/BmRNR6dVtz+4sU4k4sU9c2RYr6zqIUy5BF3nOHKk",
  server: false

# In test we don't send emails.
config :blog, Blog.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
