# Get a random point on the unit circle

scoreboard players set #input nexus.value 3600
function nexus:generic/rng/lcg
scoreboard players operation #input nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #output_vector_x nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #output_vector_y nexus.value = #output nexus.value