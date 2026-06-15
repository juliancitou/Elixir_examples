nombre =
  "Escibe tu nombre: "
  |> IO.gets()
  |> String.trim()

edad =
  "Escribe tu edad: "
  |> IO.gets()
  |> String.trim()

def comprobarSiEsEdad() do
  String.to_integer(edad)
  if is_integer(edad) do
    usuario = %{_nombre, edad}
  else
    IO.puts("Error no escribistes un numero")
  end
end

usuarios = %{nombre, comprobarSiEsEdad(edad)}
IO.puts(usurios)
