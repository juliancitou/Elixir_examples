# tupla inicial
exp1 = {:hola, "mensaje por defecto"}

# Cambiar tupla
IO.puts("\nEscribe la opcion a guardar en la tupla\nOpcion 1) :ok\nOpcion 2) :error")
tuplaPosicion0 = String.trim(IO.gets("Escribe tu opcion (1 / 2): "))
tuplaPosicion1 = String.trim(IO.gets("Ahora escriba el mensaje o numero: "))

if tuplaPosicion0 = "1" do
  {:hola_que_tal, ^tuplaPosicion1} = exp1
  IO.inspect(exp1)

  if tuplaPosicion0 = "2" do
    {:adios, ^tuplaPosicion1} = exp1
    IO.inspect(exp1)
  else
    "No se encontro ningun resutlado"
  end
end

if exp1 = true do
  output =
    case exp1 do
      {:hola_que_tal, ^tuplaPosicion1} when is_number(^tuplaPosicion1) ->
        "Posicion 0 = :ok\nPosicion1 = escribistes el numero #{^tuplaPosicion1}"

      {:hola_que_tal, tuplaPosicion1} ->
        "Posicion0 = :ok\nPosicion1 = Escribistes un mensaje el cual es #{tuplaPosicion1}"

      {:adios, tuplaPosicion1} ->
        "Resultado cuando tiene :error  #{tuplaPosicion1}"

      _ ->
        "Matcheo cualquier cosa"
    end

  IO.puts(output)
  IO.puts("\n")
end
