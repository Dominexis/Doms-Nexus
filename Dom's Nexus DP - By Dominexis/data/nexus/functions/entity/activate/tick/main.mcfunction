# Set NBT delay

scoreboard players operation @s nexus.nbt_delay = #missed_ticks nexus.value







# Push previous scores

scoreboard players operation @s nexus.prev_x = @s nexus.x
scoreboard players operation @s nexus.prev_y = @s nexus.y
scoreboard players operation @s nexus.prev_z = @s nexus.z
scoreboard players operation @s nexus.prev_mot_x = @s nexus.mot_x
scoreboard players operation @s nexus.prev_mot_y = @s nexus.mot_y
scoreboard players operation @s nexus.prev_mot_z = @s nexus.mot_z
scoreboard players operation @s nexus.prev_yaw = @s nexus.yaw
scoreboard players operation @s nexus.prev_pitch = @s nexus.pitch
scoreboard players operation @s nexus.prev_roll = @s nexus.roll







# Run function based on range

execute unless score @s nexus.id_range matches 1..128 run function nexus:entity/activate/tick/000
execute if score @s nexus.id_range matches 001..001 run function nexus:entity/activate/tick/001
execute if score @s nexus.id_range matches 002..002 run function nexus:entity/activate/tick/002
execute if score @s nexus.id_range matches 003..004 run function nexus:entity/activate/tick/004
execute if score @s nexus.id_range matches 005..008 run function nexus:entity/activate/tick/008
execute if score @s nexus.id_range matches 009..016 run function nexus:entity/activate/tick/016
execute if score @s nexus.id_range matches 017..032 run function nexus:entity/activate/tick/032
execute if score @s nexus.id_range matches 033..064 run function nexus:entity/activate/tick/064
execute if score @s nexus.id_range matches 065..128 run function nexus:entity/activate/tick/128