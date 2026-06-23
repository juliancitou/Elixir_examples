defmodule PentoWeb.PruebaLive do
  use PentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, puntuacion: 0, mensaje: "Selecciona un numero:", tiempo: tiempo())}
  end

  # Espezamos a crear un evento en el que esperamos 2 cosas, la 1ra es
  def handle_event("botonNum", %{"numero" => botonNum}, socket) do
    mensaje = "Tu suposicion es: #{botonNum}. Incorrecta. Adivina de nuevo. "
    puntuacion = socket.assigns.puntuacion - 1
    tiempo = tiempo()
    {
      :noreply,
      assign(
        socket,
        puntuacion: puntuacion,
        mensaje: mensaje,
        tiempo: tiempo
      )
    }
  end

  def render(assigns) do
    ~H"""
    <main class="px-4 py-20 sm:px-6 lg:px-8">
      <h1 class="mb-4 text-4xl font-extrabold">Tu puntuación es: {@puntuacion}</h1>

      <h2>{@mensaje}</h2>
      <h2>Son las {tiempo() } hrs</h2>
      <h2>{@mensaje}</h2>
       <br />

      <h2>
        <%= for n <- 1..15 do %>
          <.link
            class="btn btn-secondary"
            phx-click="botonNum"
            phx-value-numero={n}
          >
            {n}
          </.link>
        <% end %>
      </h2>

    </main>
    """
  end

  def tiempo do
    DateTime.utc_now() |> to_string()
  end
end
