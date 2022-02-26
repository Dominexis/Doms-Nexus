# Assign point of interest to target

execute as @a[distance=..40,gamemode=!spectator,sort=nearest,limit=1] run function nexus:entity/generic/data/extract/fakeplayer/pos
scoreboard players operation #input_vector_x nexus.value = #entity_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #entity_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #entity_z nexus.value
scoreboard players add #input_vector_y nexus.value 1000







# Get rotation to target

scoreboard players operation #input_vector_x nexus.value -= @s nexus.x
scoreboard players operation #input_vector_y nexus.value -= @s nexus.y
scoreboard players operation #input_vector_z nexus.value -= @s nexus.z
scoreboard players remove #input_vector_y nexus.value 1000
scoreboard players set #scale_factor nexus.value 10
function nexus:generic/vector/to_gimbal/3d
scoreboard players operation #yaw nexus.value = #output_yaw nexus.value
scoreboard players operation #pitch nexus.value = #output_pitch nexus.value
scoreboard players operation #pitch nexus.value /= #3 nexus.value







# Modify rotation

scoreboard players set #rotation_acceleration nexus.value 50
function temp:entity/spider_brain/mode/generic/rotation







# Modify motion

scoreboard players set #speed temp.value 350
execute if score @s nexus.mot_y matches -1000.. run function temp:entity/spider_brain/mode/generic/walk







# Apply motion

function temp:entity/spider_brain/mode/generic/motion







# Attack players

execute if entity @s[tag=!temp.entity.animate.attack] if entity @a[distance=..3,gamemode=!spectator] run function temp:entity/spider_brain/animate/attack/start