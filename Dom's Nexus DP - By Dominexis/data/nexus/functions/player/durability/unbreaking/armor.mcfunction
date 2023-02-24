# Compute probability

scoreboard players set #probability nexus.value 40000
scoreboard players add #unbreaking_level nexus.value 1
scoreboard players operation #probability nexus.value /= #unbreaking_level nexus.value
scoreboard players add #probability nexus.value 60000







# Run the odds

scoreboard players set #input nexus.value 100000
function nexus:generic/rng/lcg
execute if score #output nexus.value > #probability nexus.value run scoreboard players set #unbreaking_damage_dodge nexus.value 1