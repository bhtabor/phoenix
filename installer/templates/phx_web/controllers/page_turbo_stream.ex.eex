defmodule <%= @web_namespace %>.PageTURBO_STREAM do
  use <%= @web_namespace %>, :html

  def refresh(assigns) do
    ~H"""
    <.turbo_stream action="refresh" request_id={@request_id} />
    """
  end
end
