defmodule GpPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :gp_phoenix,
    adapter: Ecto.Adapters.Postgres
end
