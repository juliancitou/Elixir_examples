defmodule Impuestos do
  def total(precio, tipo) do
  Impuestos.porcentaje(tipo) * precio
  end

  def porcentaje(tipo) do
    cond do
      tipo == :normal -> 0.21
      tipo == :reducido -> 0.10
      tipo == :superreducido -> 0.04
    end
  end
end

IO.puts("\nLos impuestos son los siguientes: ")
IO.inspect(Impuestos.total(10, :normal))
IO.inspect(Impuestos.total(10, :reducido))
IO.inspect(Impuestos.total(10, :superreducido))
IO.puts("\n")
