defmodule CalculadoraPruebaWeb.PageController do
  use CalculadoraPruebaWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
