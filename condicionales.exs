IO.puts("===============================================================\n\n")
lluvia = String.to_integer(String.trim(IO.gets("Cuanta lluvia ha caido? ")))

# Hay varias formas de dar a entender varias opciones sobre un caso en este ejemplo de la lluvia tomamos en cuenta que si la lluvia llueve a tal cantidad
# entonces se le asigna un estado y se muestra un mensaje, ahora bien se puede hacer con if's anidados lo cual es tardado, dificil de leer y conlleva tener
# concentracion y atencion a los detalles para no cometer errores, pero tambien se puede hacer con condicionales como el case o el cond, que son mas faciles
# de leer y entender, ademas de ser mas rapidos de escribir y menos propensos a errores

# CASO DEL IF'S ANIDADOS
mensajeIf =
  if lluvia == 0 do
    "No ha llovido"
  else
    if lluvia < 30 do
      "Ha llovido"
    else
      if lluvia < 70 do
        "Ha llovido mucho"
      else
        if lluvia < 100 do
          "Ha llovido demasiado"
        else
          "Hay un diluvio en la tierra"
        end
      end
    end
  end

# CASO DEL COND:
# En el caso del cond para cada opcion debe de ir en orden, ya que analizara y repasara de arriba para abajo, de tal manera que si nosotros ponermos la opcion
# por decir algo la condicion true, entonces siempre llegara a esa ejecucion aunque este mal ,de igual manera pasara con las demas condiciones en donde
# tal vez la respuesta no sea la indicada pero como iba primero entonces se ejecutara esa opcion, por eso es importante tener cuidado con el orden de las opciones
# y colocar la opcion true al final para que sea la ultima opcion a evaluar

mensajeCond =
  cond do
    lluvia == 0 -> "No ha llovido"
    lluvia < 30 -> "Ha llovido"
    lluvia < 70 -> "Ha llovido mucho"
    lluvia < 100 -> "Ha llovido demasiado"
    true -> "Hay un diluvio en la tierra"
  end

IO.puts("Mensaje emergente de la macro cond: #{mensajeCond}")
IO.puts("Mensaje emergente de la macro if: #{mensajeIf}")
IO.puts("\n\n===============================================================\n\n")


# REFLEXION: Observa el orden y estructura del codigo, no se puede poner las macros if o cond antes despues de las IO.gets y IO.puts, ya que asi no los procede a leer
# y com no se leen no las puede mandar a las macros, quedando errores al momento de mostrar esto en terminal.
