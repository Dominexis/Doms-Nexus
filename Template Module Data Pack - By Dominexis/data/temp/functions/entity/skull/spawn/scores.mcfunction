# Assign position

function nexus:entity/generic/data/get/objective/pos

execute at @s run teleport @s ~ ~-1.7 ~







# Assign rotation

scoreboard players set @s nexus.yaw 0
scoreboard players set @s nexus.pitch 0
scoreboard players set @s nexus.mot_yaw 0
scoreboard players set @s nexus.mot_pitch 0







# Assign motion

scoreboard players set @s nexus.mot_x 0
scoreboard players set @s nexus.mot_y 0
scoreboard players set @s nexus.mot_z 0







# Assign miscellaneous values

scoreboard players set @s nexus.health 3

scoreboard players set @s nexus.id_bool 1
scoreboard players set @s nexus.id_range 4
scoreboard players set @s nexus.vehicle_id_bool 0
scoreboard players set @s nexus.air_toggle_bool 1
scoreboard players set @s nexus.damage_sensor_bool 0

scoreboard players set @s nexus.size 250
scoreboard players set @s nexus.mass 500