# Quisiera tener una tupla inicial la cual se llama tuplaDefecto la cual quiero que cambie su estado por uno diferente, esta tupla se
# compone de un atomo en la posicion 0 un string en la posicion 1 y quisiera que cambiara si en dado caso la opcion de la tupla
# tupla inicial
tuplaDefecto = {:hola, "mensaje por defecto"}

# Cambiar tupla
IO.puts("\nEscribe la opcion a guardar en la tupla\nOpcion 1) :hola_que_tal\nOpcion 2) :adios")
posicion0 = String.trim(IO.gets("Escribe tu opcion (1 / 2): "))
IO.inspect(posicion0)
posicion1 = String.trim(IO.gets("Ahora escriba el mensaje o numero: "))

case posicion0 do
  posicion0 = "1" ->
    tuplaDefecto = {:hola_que_tal, posicion1}

  posicion0 = "2" ->
    tuplaDefecto = {:adios, posicion1}

  true ->
    "\nEste es un mensaje del case"
end

if tuplaDefecto = true do
  output =
    case tuplaDefecto do
      {:hola_que_tal, posicion1} when is_number(posicion1) ->
        "Posicion 0 = :ok\nPosicion1 = escribistes el numero #{posicion1}"

      {:hola_que_tal, posicion1} ->
        "Posicion0 = :ok\nPosicion1 = Escribistes un mensaje el cual es #{posicion1}"

      {:adios, posicion1} ->
        "Resultado cuando tiene :error  #{posicion1}"

      _ ->
        "Matcheo cualquier cosa"
    end

  IO.puts(output)
  IO.puts("\n")
end
