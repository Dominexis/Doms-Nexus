# Process hitting expected wall

execute if score #crawl_axis nexus.value matches 0 if score @s nexus.collide_z matches 0 if score @s nexus.collide_x = #corner_x nexus.value run scoreboard players set #pathfinder nexus.value 1
execute if score #crawl_axis nexus.value matches 1 if score @s nexus.collide_x matches 0 if score @s nexus.collide_z = #corner_z nexus.value run scoreboard players set #pathfinder nexus.value 1







# Process hitting unexpected wall

execute if score #crawl_axis nexus.value matches 0 if score @s nexus.collide_z = #corner_z nexus.value if score #axial_slant nexus.value matches 300 run scoreboard players remove @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 1 if score @s nexus.collide_x = #corner_x nexus.value if score #axial_slant nexus.value matches 300 run scoreboard players remove @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 0 if score @s nexus.collide_z = #corner_z nexus.value if score #axial_slant nexus.value matches 600 run scoreboard players add @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 1 if score @s nexus.collide_x = #corner_x nexus.value if score #axial_slant nexus.value matches 600 run scoreboard players add @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 0 if score @s nexus.collide_z = #corner_z nexus.value run scoreboard players set #pathfinder nexus.value 1
execute if score #crawl_axis nexus.value matches 1 if score @s nexus.collide_x = #corner_x nexus.value run scoreboard players set #pathfinder nexus.value 1







# Stop pathfinding if it passes the threshold

execute if score #crawl_axis nexus.value matches 0 if score #corner_x nexus.value matches -1 if score @s nexus.x < @s nexus.threshold2 run scoreboard players set #pathfinder nexus.value 0
execute if score #crawl_axis nexus.value matches 0 if score #corner_x nexus.value matches 01 if score @s nexus.x > @s nexus.threshold2 run scoreboard players set #pathfinder nexus.value 0
execute if score #crawl_axis nexus.value matches 1 if score #corner_z nexus.value matches -1 if score @s nexus.z < @s nexus.threshold2 run scoreboard players set #pathfinder nexus.value 0
execute if score #crawl_axis nexus.value matches 1 if score #corner_z nexus.value matches 01 if score @s nexus.z > @s nexus.threshold2 run scoreboard players set #pathfinder nexus.value 0