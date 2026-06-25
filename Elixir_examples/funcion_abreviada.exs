defmodule CalcularDescuento do
  # Cambiamos a recibir números directamente
  def calcular(valor1, valor2), do: (valor1 + valor2) * 0.70
end

# Función auxiliar para leer y validar de forma segura
defmodule LectorSeguro do
  def leer_entero(mensaje) do
    entrada = IO.gets(mensaje) |> String.trim()

    case Integer.parse(entrada) do
      {numero, _resto} -> {:ok, numero}
      :error -> {:error, "Te has equivocado: '#{entrada}' no es un número válido."}
    end
  end
end

# Flujo principal del programa
with {:ok, v1} <- LectorSeguro.leer_entero("Ingrese un numero a valor1: "),
     {:ok, v2} <- LectorSeguro.leer_entero("Ingrese un numero a valor2: ") do

  # Si ambos son válidos, se ejecuta el cálculo
  resultado = CalcularDescuento.calcular(v1, v2)
  IO.puts("El resultado con descuento es: #{resultado}")

else
  # Si cualquiera de los dos falla, atrapa el error y muestra el mensaje sin tronar
  {:error, mensaje_error} ->
    IO.puts(mensaje_error)
end
