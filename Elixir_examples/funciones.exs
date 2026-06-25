# Veremos un poco de como definir a los modules o funciones, esto es para crear funciones que se puedan reutilizar y que
# tengan un proposito especifico

# CALCULADORA
defmodule Calculadora do
  def suma(a, b) do
    a + b
  end

  def resta(a, b) do
    a - b
  end

  def multiplicacion(a, b) do
    a * b
  end

  # division con guardas... Las guardas son una forma de sustituir el if de la divion en este caso, aqui intentaremos detectar o
  # aislar la opcion de cuando b sea igual a 0, dando como resultado un mensaje de :inf para mostrar infinito
  def division(a, b) when b == 0 do
    :inf
  end

  # division simple y cotidiana con if's, en donde podemos asignar este tipo
  def division(a, b) do
    if b == 0 do
      "No se puede dividir entre cero"
    else
      a / b
    end
  end

end

IO.puts("===============================================================\n")

a = String.to_integer(String.trim(IO.gets("Escribe el primer numero: ")))
b = String.to_integer(String.trim(IO.gets("Escribe el segundo numero: ")))

IO.puts("\n===============================================================\n")

IO.puts("RESULTADS: ")
IO.puts("La suma de #{a} y #{b} es = #{Calculadora.suma(a, b)}")
IO.puts("La resta de #{a} y #{b} es = #{Calculadora.resta(a, b)}")
IO.puts("La multiplicacion de #{a} y #{b} es = #{Calculadora.multiplicacion(a, b)}")
IO.puts("La division de #{a} y #{b} es = #{Calculadora.division(a, b)}")

IO.puts("\n===============================================================")
