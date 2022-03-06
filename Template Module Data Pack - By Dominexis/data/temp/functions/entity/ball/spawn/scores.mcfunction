# Assign position

function nexus:entity/generic/data/get/objective/pos

execute at @s run teleport @s ~ ~-0.5 ~







# Assign rotation

scoreboard players set @s nexus.matrix_x_x 1000
scoreboard players set @s nexus.matrix_x_y 0
scoreboard players set @s nexus.matrix_x_z 0
scoreboard players set @s nexus.matrix_y_x 0
scoreboard players set @s nexus.matrix_y_y 1000
scoreboard players set @s nexus.matrix_y_z 0







# Assign motion

scoreboard players set @s nexus.mot_x 0
scoreboard players set @s nexus.mot_y 0
scoreboard players set @s nexus.mot_z 0
scoreboard players set @s nexus.ang_vel_x 0
scoreboard players set @s nexus.ang_vel_y 0
scoreboard players set @s nexus.ang_vel_z 0






# Assign miscellaneous values

scoreboard players set @s nexus.id_bool 1
scoreboard players set @s nexus.id_range 4
scoreboard players set @s nexus.tick_dist 64
scoreboard players set @s nexus.vehicle_id_bool 0
scoreboard players set @s nexus.air_toggle_bool 1
scoreboard players set @s nexus.damage_sensor_bool 0

scoreboard players set @s nexus.size 375
scoreboard players set @s nexus.mass 600