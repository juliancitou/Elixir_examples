import Config

config :pento, Pento.Repo,
  username: "julian",
  password: "22690208",
  hostname: "localhost",
  database: "pento_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :pento, PentoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "oZFGhhCVi8yUoqivxMap+NT+35Tv7oTxkCzSsDnpe+owpZfi3R3ig0SUki/GPybN",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:pento, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:pento, ~w(--watch)]}
  ]

config :pento, PentoWeb.Endpoint,
  live_reload: [
    web_console_logger: true,
    patterns: [
      ~r"priv/static/(?!uploads/).*\.(js|css|png|jpeg|jpg|gif|svg)$"E,
      ~r"priv/gettext/.*\.po$"E,
      ~r"lib/pento_web/router\.ex$"E,
      ~r"lib/pento_web/(controllers|live|components)/.*\.(ex|heex)$"E
    ]
  ]

config :pento, dev_routes: true

config :logger, :default_formatter, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  debug_heex_annotations: true,
  debug_attributes: true,
  enable_expensive_runtime_checks: true

config :swoosh, :api_client, false
