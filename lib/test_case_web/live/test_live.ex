defmodule TestCaseWeb.TestLive do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(TestCaseWeb.PageView, "index.html", assigns)
  end

  def mount(_, _, socket) do
    Process.send_after(self(), :set_loaded, 3000)
    {:ok, assign(socket, loading: true, data: [])}
  end

  def handle_info(:set_loaded, socket) do
    {:noreply, assign(socket, loading: false, data: [1, 2])}
  end
end
