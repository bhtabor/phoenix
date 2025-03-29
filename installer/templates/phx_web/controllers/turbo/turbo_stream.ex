defmodule <%= @web_namespace %>.Turbo.TurboStream do
  use <%= @web_namespace %>, :html

  def refresh(assigns) do
    ~H"""
    <.turbo_stream action="refresh" request_id={@request_id} />
    """
  end
end
