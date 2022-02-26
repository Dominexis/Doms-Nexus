# Pathfind around obstacles

execute if entity @s[scores={nexus.mode=2},tag=!temp.entity.property.pathfinder_disabled] run function nexus:entity/generic/pathfinder/crawl/main
execute unless score @s nexus.mode matches 2 run scoreboard players set @s nexus.pathfinder 0







# Rotate towards target

scoreboard players operation #rotation_acceleration nexus.value *= #missed_ticks nexus.value
function nexus:entity/generic/rotation/yaw_pitch







# Calculate vector

scoreboard players operation #input_yaw nexus.value = @s nexus.yaw
function nexus:generic/vector/from_gimbal/2d/yaw
scoreboard players operation #vector_x temp.value = #output_vector_x nexus.value
scoreboard players operation #vector_z temp.value = #output_vector_z nexus.value