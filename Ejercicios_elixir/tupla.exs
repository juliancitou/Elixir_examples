# La TUPLA es una estructura que tiene elixir que permite agrupar multiples variables y/o multiples
# expreciones en una unica expresion

tupla1 = {20, 10, "hola", 100, 60}

tupla2 = {5, 10, "Hola", :mundo, [1, 2, 3], {4, 5, 6}}
IO.puts("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
IO.puts("\nTupla 1: #{inspect(tupla1)}")
IO.puts("Tupla 2: #{inspect(tupla2)}")

# CONCEPTO IMPORTANTE: pattern matching con tuplas... El pattern matching es una tecnica que permite
# comparar una estructura de datos con un patron, y si la estructura de datos coincide con el patron,
# entonces se pueden extraer los valores de la estructura de datos y asignarlos a variables, esto es
# muy util para trabajar con tuplas, ya que nos permite extraer los valores de la tupla  y asignarlos
# a variables de manera facil y rapida

# Por ejemplo, si queremos extraer el primer valor de la tupla1, podemos hacer lo siguiente:
{a, _, _, _, _} = tupla1
IO.puts("\nEl primer valor de la tupla1 es: #{a}\n")
IO.puts("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
