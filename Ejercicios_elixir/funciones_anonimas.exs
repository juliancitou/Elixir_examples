# Funciones anonimas... ¿para que nos sirven?
# Las funciones anonimas son funciones que no tienen un nombre, es decir,
# no se pueden llamar por su nombre, sino que se pueden asignar a una
# variable o pasarlas como argumento a otra funcion, esto nos permite tener
# una mayor flexibilidad a la hora de escribir codigo, ya que podemos crear
# funciones de manera dinamica y utilizarlas en el momento que las
# necesitemos, ademas de que nos permiten tener un codigo mas limpio y
# organizado, ya que no tenemos que preocuparnos por el nombre de la funcion
# y podemos enfocarnos en la logica de la misma.

defmodule Calculando do
  def operar(valoresAnonimos) do
    valoresAnonimos.(5, 3)
  end
end

IO.puts("Estas son las funciones anonimas: ")
IO.puts(Calculando.operar(fn a, b -> a + b end))
IO.puts(Calculando.operar(fn a, b -> a - b end))
IO.puts(Calculando.operar(fn a, b -> a * b end))
IO.puts(Calculando.operar(fn a, b -> a / b end))
