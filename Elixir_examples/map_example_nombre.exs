nombre =
  "Escibe tu nombre: "
  |> IO.gets()
  |> String.trim()

edad =
  "Escribe tu edad: "
  |> IO.gets()
  |> String.trim()

usuarios = %{nombreUsr: nombre, edadUsr: edad}
IO.puts(usuarios)
