# Process damage sensor

scoreboard players set #health temp.value 0
execute as @e[type=slime,distance=..8,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,limit=1] run function temp:entity/spider_brain/mode/generic/health/scores







# Health management

scoreboard players operation #damage temp.value = #health temp.value
scoreboard players operation #damage temp.value *= #-1 nexus.value
scoreboard players add #damage temp.value 1024000
scoreboard players operation @s nexus.health -= #damage temp.value







# Push mob backwards

scoreboard players operation #input_yaw nexus.value = #entity_yaw nexus.value
function nexus:generic/vector/from_gimbal/2d/yaw
scoreboard players operation #output_vector_x nexus.value /= #2 nexus.value
scoreboard players operation #output_vector_z nexus.value /= #2 nexus.value
scoreboard players operation @s nexus.mot_x += #output_vector_x nexus.value
scoreboard players operation @s nexus.mot_z += #output_vector_z nexus.value
scoreboard players add @s nexus.mot_y 400







# Damage animation

execute if score @s nexus.health matches 1.. run function temp:entity/spider_brain/animate/damage/start







# Start death mode

execute if score @s nexus.y matches ..-96000 run function temp:entity/spider_brain/mode/generic/terminate
execute if score @s nexus.health matches ..0 run function temp:entity/spider_brain/mode/death/start