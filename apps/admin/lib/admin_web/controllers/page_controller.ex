defmodule AdminWeb.PageController do
  use AdminWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def dashboard(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :dashboard)
  end

  def data(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :dashboard)
  end

  def reports(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :reports)
  end

  def settings(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :dashboard)
  end
end
