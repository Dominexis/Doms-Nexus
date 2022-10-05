# Calculate initial value for point of interest

execute unless score @s nexus.collide_x matches 0 run scoreboard players set @s nexus.poi_yaw 300
execute unless score @s nexus.collide_z matches 0 run scoreboard players set @s nexus.poi_yaw 600

scoreboard players operation #yaw nexus.value %= #3600 nexus.value
execute if score #yaw nexus.value matches 0900..1800 run scoreboard players operation @s nexus.poi_yaw *= #-1 nexus.value
execute if score #yaw nexus.value matches 0900..2700 run scoreboard players add @s nexus.poi_yaw 1800
execute if score #yaw nexus.value matches 2700..3600 run scoreboard players operation @s nexus.poi_yaw *= #-1 nexus.value
scoreboard players operation @s nexus.poi_yaw %= #3600 nexus.value







# Set boolean

scoreboard players set @s nexus.pathfinder 1