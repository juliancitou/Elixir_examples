## PRACTICANDO LOS IF'S EN ELIXIR
IO.puts("===============================================================\n\n")
IO.puts("tendras que escribir tu edad a continuacion")
edad = String.to_integer(String.trim(IO.gets("Escribe tu edad: ")))
IO.puts("Tu edad es: #{edad}")

if edad >= 18 do
  IO.puts("Eres mayor de edad")
else
  IO.puts("Eres menor de edad")
end

IO.puts("===============================================================")
