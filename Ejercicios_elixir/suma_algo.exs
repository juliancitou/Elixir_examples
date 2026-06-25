IO.puts("===============================================================\n\nTENDRAS QUE ESCRIBIR 2 NUMEROS")
a = IO.gets("Escribe el primer numero: ")
b = IO.gets("Escribe el segundo numero: ")

suma = a + b
sumaLimpia = String.trim(suma)
IO.puts("La suma de #{a} y #{b} es: #{sumaLimpia}")
IO.puts("===============================================================")
