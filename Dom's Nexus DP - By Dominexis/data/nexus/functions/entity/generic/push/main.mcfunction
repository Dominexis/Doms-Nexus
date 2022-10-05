# Prepare scores

function nexus:entity/generic/score/get/pos
scoreboard players operation #entity_size nexus.value = @s nexus.size
scoreboard players operation #entity_mass nexus.value = @s nexus.mass

scoreboard players set #force_x nexus.value 0
scoreboard players set #force_y nexus.value 0
scoreboard players set #force_z nexus.value 0







# Calculate force based on surrounding entities

execute if score #player_push_boolean nexus.value matches 0 as @e[type=!player,distance=..4,tag=nexus.entity.push,tag=!nexus.player.vehicle] run function nexus:entity/generic/push/distance
execute if score #player_push_boolean nexus.value matches 1 as @e[distance=..4,tag=nexus.entity.push,tag=!nexus.player.vehicle] run function nexus:entity/generic/push/distance







# Apply force

scoreboard players operation #force_x nexus.value /= @s nexus.mass
scoreboard players operation #force_y nexus.value /= @s nexus.mass
scoreboard players operation #force_z nexus.value /= @s nexus.mass
scoreboard players operation @s nexus.mot_x += #force_x nexus.value
scoreboard players operation @s nexus.mot_y += #force_y nexus.value
scoreboard players operation @s nexus.mot_z += #force_z nexus.value