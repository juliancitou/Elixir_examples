defmodule Calculando do
  @doc """
  Funciones anónimas... ¿para que nos sirven?
  Las funciones anónimas son funciones que no tienen un nombre, es decir,
  no se pueden llamar por su nombre, sino que se pueden asignar a una
  variable o pasarlas como argumento a otra función, esto nos permite tener
  una mayor flexibilidad a la hora de escribir código, ya que podemos crear
  funciones de manera dinámica y utilizarlas en el momento que las
  necesitemos, además de que nos permiten tener un código más limpio y
  organizado, ya que no tenemos que preocuparnos por el nombre de la función
  y podemos enfocarnos en la lógica de la misma.
  """

  @doc """
  Aquí estamos mostrando y haciendo uso de las funciones anónimas,
  donde estas funciones no tienen nombre, solo se les declara con FN
  seguido de las variables que tendrá y después de un -> sigue la
  operación a realizar o una función más compleja...
  """
  def operar(valoresAnonimos) do
    valoresAnonimos.(5, 3)
  end
end

# Ejecución de los ejemplos
IO.puts("Estas son las funciones anónimas: ")
IO.puts(Calculando.operar(fn a, b -> a + b end))
IO.puts(Calculando.operar(fn a, b -> a - b end))
IO.puts(Calculando.operar(fn a, b -> a * b end))
IO.puts(Calculando.operar(fn a, b -> a / b end))
