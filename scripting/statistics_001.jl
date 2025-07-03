# Librerías necesarias
using Statistics
using PrettyTables

# Serie de 10 números enteros sugeridos
datos = [12, 7, 9, 15, 3, 18, 11, 6, 14, 10]

# Cálculos estadísticos
promedio = mean(datos)
media = sum(datos) / length(datos)  # equivalente a mean, para mostrar ambas formas
mediana = median(datos)
máximo = maximum(datos)
mínimo = minimum(datos)

# Preparar tabla
resultados = [
    ["Promedio (mean)", promedio],
    ["Media (sum/n)", media],
    ["Mediana", mediana],
    ["Máximo", máximo],
    ["Mínimo", mínimo]
]

# Mostrar tabla
pretty_table(resultados; header=["Métrica", "Valor"])
