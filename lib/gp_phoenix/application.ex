defmodule GpPhoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      GpPhoenixWeb.Telemetry,
      # Start the Ecto repository
      GpPhoenix.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: GpPhoenix.PubSub},
      # Start Finch
      {Finch, name: GpPhoenix.Finch},
      # Start the Endpoint (http/https)
      GpPhoenixWeb.Endpoint
      # Start a worker by calling: GpPhoenix.Worker.start_link(arg)
      # {GpPhoenix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GpPhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    GpPhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
