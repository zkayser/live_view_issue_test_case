defmodule TestCaseWeb.PageController do
  use TestCaseWeb, :controller

  def index(conn, _params) do
    live_render(conn, TestCaseWeb.TestLive, session: %{})
  end
end
