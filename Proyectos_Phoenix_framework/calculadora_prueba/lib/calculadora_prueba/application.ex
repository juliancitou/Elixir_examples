defmodule CalculadoraPrueba.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      CalculadoraPruebaWeb.Telemetry,
      CalculadoraPrueba.Repo,
      {DNSCluster, query: Application.get_env(:calculadora_prueba, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: CalculadoraPrueba.PubSub},
      # Start a worker by calling: CalculadoraPrueba.Worker.start_link(arg)
      # {CalculadoraPrueba.Worker, arg},
      # Start to serve requests, typically the last entry
      CalculadoraPruebaWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CalculadoraPrueba.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CalculadoraPruebaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
