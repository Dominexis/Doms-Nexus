# Get a random point on the unit sphere

scoreboard players set #input nexus.value 3600
function nexus:generic/rng/lcg
scoreboard players operation #input nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #output_vector_x nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #output_vector_y nexus.value = #output nexus.value

scoreboard players set #input nexus.value 2001
function nexus:generic/rng/lcg
scoreboard players operation #input nexus.value = #output nexus.value
scoreboard players remove #input nexus.value 1000
scoreboard players operation #output_vector_z nexus.value = #input nexus.value

scoreboard players operation #input nexus.value *= #input nexus.value
scoreboard players operation #input nexus.value *= #-1 nexus.value
scoreboard players add #input nexus.value 1000000
function nexus:generic/root/radical/square
scoreboard players operation #output_vector_x nexus.value *= #output nexus.value
scoreboard players operation #output_vector_y nexus.value *= #output nexus.value
scoreboard players operation #output_vector_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_y nexus.value /= #1000 nexus.value