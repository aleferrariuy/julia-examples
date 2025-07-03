using CSV
using DataFrames
using Statistics
using PrettyTables

# Leer datos desde archivo CSV sin encabezado
df = CSV.read("numeros.csv", DataFrame; header=false)

# Verificar que todos los valores sean numéricos enteros
datos_crudos = df[:, 1]
if any(x -> !(x isa Number && isinteger(x)), datos_crudos)
    println("⚠️  Error: El archivo contiene valores no numéricos o no enteros.")
    exit(1)
end

# Convertir a vector de enteros
datos = Vector{Int}(datos_crudos)

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
