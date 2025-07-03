## statistics_001_csv.jl

~~~Julia
using CSV
using DataFrames
using Statistics
using PrettyTables

# Leer datos desde archivo CSV sin encabezado
df = CSV.read("numeros.csv", DataFrame; header=false)

# Extraer la única columna como vector de enteros
datos = Vector{Int}(df[:, 1])

# Cálculos estadísticos
promedio = mean(datos)
media = sum(datos) / length(datos)
mediana = median(datos)
máximo = maximum(datos)
mínimo = minimum(datos)

# Preparar resultados
resultados = [
    ["Promedio (mean)", promedio],
    ["Media (sum/n)", media],
    ["Mediana", mediana],
    ["Máximo", máximo],
    ["Mínimo", mínimo]
]

# Mostrar tabla
pretty_table(resultados; header=["Métrica", "Valor"])
~~~

Instalación de dependencias necesarias (librerías)

~~~Julia
import Pkg
Pkg.add(["CSV", "DataFrames", "PrettyTables"])
~~~

Ejecución

~~~
julia statistics_001_csv.jl
~~~

---
