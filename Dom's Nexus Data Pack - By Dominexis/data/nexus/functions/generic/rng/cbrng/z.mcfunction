# Initialize values

scoreboard players operation #output nexus.value = #cbrng_seed nexus.value







# Modify value

function nexus:generic/rng/cbrng/axis/z







# Return output

scoreboard players operation #output nexus.value %= #input nexus.value
execute if score #input nexus.value matches 0 run scoreboard players set #output nexus.value 0