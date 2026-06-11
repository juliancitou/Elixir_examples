defmodule RegistradorUsuario do
  def iniciar do
    IO.puts("\n====== BIENVENIDO AL SISTEMA ======\n")
    # Usando el Pipe para capturar, procesar y saludar
    "Por favor, ingresa tu nombre completo: "
    # 1. Lee la consola
    |> IO.gets()
    # 2. Quita espacios y el enter (\n)
    |> String.trim()
    # 3. Pasa el dato a nuestra propia función
    |> procesar_nombre()
    # 4. Genera el texto final del saludo
    |> generar_saludo()
    # 5. Lo imprime en pantalla
    |> IO.puts()
  end

  # Función auxiliar para dar formato de nombre propio (Ej: "juan perez" -> "Juan Perez")
  def procesar_nombre(nombre) do
    # Divide por palabras: ["juan", "perez"]
    String.split(nombre)
    # Capitaliza cada una: ["Juan", "Perez"]
    |> Enum.map(&String.capitalize/1)
    # Las vuelve a unir con espacio: "Juan Perez"
    |> Enum.join(" ")
  end

  # Función para armar el mensaje
  def generar_saludo(nombre_formateado) do
    IO.puts "\n¡Hola, #{nombre_formateado}! Tu registro ha sido un exito.\n"
    IO.puts("=====================================")
  end
end

# Ejecutamos el programa llamando a la función del módulo
RegistradorUsuario.iniciar()
