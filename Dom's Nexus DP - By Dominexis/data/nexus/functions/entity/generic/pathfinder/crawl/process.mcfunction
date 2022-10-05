# Set corner and axis values

scoreboard players operation @s nexus.poi_yaw %= #3600 nexus.value

execute if score @s nexus.poi_yaw matches 0000..1800 run scoreboard players set #corner_x nexus.value -1
execute if score @s nexus.poi_yaw matches 1800..3600 run scoreboard players set #corner_x nexus.value 01
execute if score @s nexus.poi_yaw matches 0000..0900 run scoreboard players set #corner_z nexus.value 01
execute if score @s nexus.poi_yaw matches 0900..2700 run scoreboard players set #corner_z nexus.value -1
execute if score @s nexus.poi_yaw matches 2700..3600 run scoreboard players set #corner_z nexus.value 01

execute if score @s nexus.poi_yaw matches 0000..0450 run scoreboard players set #crawl_axis nexus.value 0
execute if score @s nexus.poi_yaw matches 0450..1350 run scoreboard players set #crawl_axis nexus.value 1
execute if score @s nexus.poi_yaw matches 1350..2250 run scoreboard players set #crawl_axis nexus.value 0
execute if score @s nexus.poi_yaw matches 2250..3150 run scoreboard players set #crawl_axis nexus.value 1
execute if score @s nexus.poi_yaw matches 3150..3600 run scoreboard players set #crawl_axis nexus.value 0

scoreboard players operation #axial_slant nexus.value = @s nexus.poi_yaw
scoreboard players operation #axial_slant nexus.value %= #900 nexus.value







# Perform actions based on collisions

scoreboard players operation #pathfinder nexus.value = @s nexus.pathfinder
execute if score @s nexus.pathfinder matches 1 run function nexus:entity/generic/pathfinder/crawl/crawl/main
execute if score @s nexus.pathfinder matches 2 run function nexus:entity/generic/pathfinder/crawl/float/main
scoreboard players operation @s nexus.pathfinder = #pathfinder nexus.value







# Stop pathfinder if target is within specific range

scoreboard players operation #test_yaw nexus.value = #yaw nexus.value
scoreboard players operation #test_yaw nexus.value -= @s nexus.yaw
scoreboard players operation #test_yaw nexus.value %= #3600 nexus.value
execute if score #axial_slant nexus.value matches 300 if score #test_yaw nexus.value matches 1950..3300 run scoreboard players set @s nexus.pathfinder 0
execute if score #axial_slant nexus.value matches 600 if score #test_yaw nexus.value matches 0300..1650 run scoreboard players set @s nexus.pathfinder 0







# Push value

scoreboard players operation @s nexus.poi_yaw %= #3600 nexus.value
execute if score @s nexus.pathfinder matches 1.. run scoreboard players operation #yaw nexus.value = @s nexus.poi_yaw