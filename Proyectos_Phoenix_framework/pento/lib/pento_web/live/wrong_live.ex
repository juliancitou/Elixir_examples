defmodule PentoWeb.WrongLive do
  use PentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, score: 0, message: "Adivina:")}
  end

  # Espezamos a crear un evento en el que esperamos 2 cosas, la 1ra es
  def handle_event("guess", %{"number" => guess}, socket) do
    message = "Tu suposicion es: #{guess}. Incorrecta. Adivina de nuevo. "
    score = socket.assigns.score - 1

    {
      :noreply,
      assign(
        socket,
        score: score,
        message: message
      )
    }
  end

  def render(assigns) do
    ~H"""
    <main class="px-4 py-20 sm:px-6 lg:px-8">
      <h1 class="mb-4 text-4xl font-extrabold">Tu puntuación es: {@score}</h1>
      <h2>
        {@message} Son las {time()}
      </h2>
      <h2>{@message}</h2>
      <br />
      <h2>
        <%= for n <- 1..10 do %>
          <.link
            class="btn btn-secondary"
            phx-click="guess"
            phx-value-number={n}
          >
            {n}
          </.link>
        <% end %>
      </h2>
    </main>
    """
  end

  def time do
    DateTime.utc_now() |> to_string()
  end
end
