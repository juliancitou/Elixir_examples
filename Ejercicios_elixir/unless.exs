# unless es diferente a if, ya que se ejecuta cuando la condicion es falsa, es decir, si la condicion es verdadera entonces
# no se ejecutara el bloque de codigo, pero si la condicion es falsa entonces se ejecutara el bloque de codigo, por lo tanto
# es importante tener cuidado con la logica de las condiciones para no cometer errores

# Un ejemplo sencillo sobre el uso de esta macro seria la siguiente, en donde se pregunta al usuario si es administrador y
# si el usuario responde que no es administrador entonces se ejecutara el bloque de codigo que muestra el mensaje
# "No eres administrador", pero si el usuario responde que si es administrador entonces no se ejecutara el bloque de codigo
# y no se mostrara el mensaje, por lo tanto es importante tener cuidado con la logica de las condiciones para no cometer errores

# Si en dado caso admin es diferente de admin entonces...
IO.puts("===============================================================\n\n")

respuesta = String.trim(IO.gets("Eres administrador? (si/no): "))
administrador = respuesta == "si"

unless administrador do
  IO.puts "No eres administrador"
else
  IO.puts "Eres administrador"
end
IO.puts("\n\n===============================================================")
