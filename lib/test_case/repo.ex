defmodule TestCase.Repo do
  use Ecto.Repo,
    otp_app: :test_case,
    adapter: Ecto.Adapters.Postgres
end
