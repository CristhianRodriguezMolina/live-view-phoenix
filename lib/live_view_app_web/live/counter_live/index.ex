defmodule LiveViewAppWeb.CounterLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :counter, 0)}
  end

  def render(assigns) do
    ~L"""
    <label>Counter: <%= @counter %></label>
    <button phx-click="incr">+</button>
    """
  end

  def handle_event("incr", _event, socket) do
    socket = update(socket, :counter, &(&1 + 1))
    {:noreply, socket}
  end
end
