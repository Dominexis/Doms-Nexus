# Process concave corners

execute if score @s nexus.collide_x = #corner_x nexus.value if score @s nexus.collide_z = #corner_z nexus.value run function nexus:entity/generic/pathfinder/crawl/crawl/concave







# Process convex corners

execute if score #crawl_axis nexus.value matches 0 if score @s nexus.collide_x matches 0 if score #axial_slant nexus.value matches 300 run scoreboard players add @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 1 if score @s nexus.collide_z matches 0 if score #axial_slant nexus.value matches 300 run scoreboard players add @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 0 if score @s nexus.collide_x matches 0 if score #axial_slant nexus.value matches 600 run scoreboard players remove @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 1 if score @s nexus.collide_z matches 0 if score #axial_slant nexus.value matches 600 run scoreboard players remove @s nexus.poi_yaw 900
execute if score #crawl_axis nexus.value matches 0 if score @s nexus.collide_x matches 0 run scoreboard players set #pathfinder nexus.value 2
execute if score #crawl_axis nexus.value matches 1 if score @s nexus.collide_z matches 0 run scoreboard players set #pathfinder nexus.value 2

execute if score #pathfinder nexus.value matches 1 run scoreboard players operation @s nexus.threshold2 = @s nexus.threshold1
execute if score #pathfinder nexus.value matches 1 if score #crawl_axis nexus.value matches 0 run scoreboard players operation @s nexus.threshold1 = @s nexus.z
execute if score #pathfinder nexus.value matches 1 if score #crawl_axis nexus.value matches 1 run scoreboard players operation @s nexus.threshold1 = @s nexus.x