# Initialize values

scoreboard players operation #output nexus.value = #cbrng_seed nexus.value







# Modify value

function nexus:generic/rng/cbrng/axis/x
function nexus:generic/rng/cbrng/axis/y







# Return output

execute if score #input nexus.value matches 1.. run scoreboard players operation #output nexus.value %= #input nexus.value