## statistics.jl

Script en lenguaje Julia que a partir de una serie de 10 números enteros calcula:

- promedio
- media
- mediana
- máximo
- mínimo

Devuelve resultados en formato tabla.

~~~Julia
using Statistics
using PrettyTables

datos = [12, 7, 9, 15, 3, 18, 11, 6, 14, 10]

promedio = mean(datos)
media = sum(datos) / length(datos)  # equivalente a mean, para mostrar ambas formas
mediana = median(datos)
máximo = maximum(datos)
mínimo = minimum(datos)

resultados = [
    ["Promedio (mean)", promedio],
    ["Media (sum/n)", media],
    ["Mediana", mediana],
    ["Máximo", máximo],
    ["Mínimo", mínimo]
]

pretty_table(resultados; header=["Métrica", "Valor"])
~~~

Si nuestro sistema no cuenta con PrettyTables:

~~~Julia
import Pkg
Pkg.add("PrettyTables")
~~~

Ejecución:

~~~Julia
julia statistics_001.jl
~~~

---
