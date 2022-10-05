# Initialize values

scoreboard players operation #output nexus.value = #cbrng_seed nexus.value







# Modify value

function nexus:generic/rng/cbrng/axis/y
function nexus:generic/rng/cbrng/axis/z







# Return output

execute if score #input nexus.value matches 1.. run scoreboard players operation #output nexus.value %= #input nexus.value