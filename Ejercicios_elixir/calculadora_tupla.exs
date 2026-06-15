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

  # Division con tuplas, en donde podemos mandar una tupla en donde el segudno valor de division sea 0, si es asi mandara :inf
  def division(_a, 0) do
    :infinito
  end

  # division simple
  def division(a, b) when is_number(a) and is_number(b)do
      a / b
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
