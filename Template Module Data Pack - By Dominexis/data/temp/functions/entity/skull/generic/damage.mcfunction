# Reset health score for damage sensor

scoreboard players set @e[type=pig,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,limit=1] nexus.health 1024000







# Decrement health

scoreboard players remove @s nexus.health 1







# Play damage animation

function temp:entity/skull/animate/damage/start







# Set motion values

execute as @e[type=pig,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/score/get/rot

scoreboard players operation #input_yaw nexus.value = #entity_yaw nexus.value
function nexus:generic/vector/from_gimbal/2d/yaw
scoreboard players operation @s nexus.mot_x = #output_vector_x nexus.value
scoreboard players operation @s nexus.mot_z = #output_vector_z nexus.value

scoreboard players operation @s nexus.mot_x *= #3 nexus.value
scoreboard players operation @s nexus.mot_z *= #3 nexus.value
scoreboard players operation @s nexus.mot_x /= #2 nexus.value
scoreboard players operation @s nexus.mot_z /= #2 nexus.value

scoreboard players set @s nexus.mot_y 1000







# Terminate if health ran out

execute if score @s nexus.health matches ..0 run function temp:entity/skull/mode/death/start