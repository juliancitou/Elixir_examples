defmodule PentoWeb.JuegoLive do
  use PentoWeb, :live_view

  def mount(_params, _session, socket) do
    # :rand.uniform(25) genera un número aleatorio genuino entre 1 y 25
    num_secreto = :rand.uniform(25)

    {:ok,
     assign(socket,
       num_aleatorio: num_secreto,
       intentos: 0,
       mensaje: "Adivina el número secreto entre 1 y 25:",
       tiempo: tiempo(),
       juego_terminado: false
     )}
  end

  def handle_event("botonNum", %{"numero" => boton_num_str}, socket) do
    # 1. Convertimos el string del HTML a un entero para poder compararlo
    boton_num = String.to_integer(boton_num_str)
    num_secreto = socket.assigns.num_aleatorio

    # 2. El bloque cond evalúa y DEVUELVE una tupla con los nuevos valores
    {mensaje, intentos, terminado} =
      cond do
        boton_num == num_secreto ->
          {"¡Felicidades! El número #{boton_num} era el correcto. ¡Ganaste!",
           socket.assigns.intentos, true}

        true ->
          {"El número #{boton_num} es incorrecto. ¡Sigue intentando!",
           socket.assigns.intentos + 1, false}
      end

    {:noreply,
     assign(socket,
       intentos: intentos,
       mensaje: mensaje,
       tiempo: tiempo(),
       juego_terminado: terminado
     )}
  end

  def render(assigns) do
    ~H"""
    <main class="px-4 py-20 sm:px-6 lg:px-8">
      <!-- Corregido: Ahora muestra @intentos en lugar de @puntuacion -->
      <h1 class="mb-4 text-4xl font-extrabold">Intentos realizados: {@intentos}</h1>
      
      <h2 class="text-xl font-semibold mb-2">{@mensaje}</h2>
      
      <h3 class="text-gray-500 mb-6">Son las {tiempo()} hrs</h3>
      
      <div class="grid grid-cols-5 gap-2 max-w-xs">
        <%= for n <- 1..25 do %>
          <button
            phx-click="botonNum"
            phx-value-numero={n}
            disabled={@juego_terminado}
            class="p-2 text-white bg-blue-600 rounded hover:bg-blue-700 disabled:bg-gray-400 disabled:cursor-not-allowed"
          >
            {n}
          </button>
        <% end %>
      </div>
      
      <%= if @juego_terminado do %>
        <button
          phx-click="reiniciar"
          class="mt-6 px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700"
        >
          Jugar de nuevo
        </button>
      <% end %>
    </main>
    """
  end

  def tiempo do
    # Solo muestra HH:MM:SS para que se vea limpio
    DateTime.utc_now() |> to_string() |> String.slice(11..18)
  end

  # Evento extra para cuando el usuario quiera reiniciar el juego
  def handle_event("reiniciar", _params, socket) do
    {:noreply,
     assign(socket,
       num_aleatorio: :rand.uniform(25),
       intentos: 0,
       mensaje: "Adivina el número secreto entre 1 y 25:",
       juego_terminado: false
     )}
  end
end
