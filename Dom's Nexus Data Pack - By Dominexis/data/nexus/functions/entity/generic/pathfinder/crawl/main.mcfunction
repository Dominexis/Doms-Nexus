# Process algorithm if eligible

scoreboard players set #boolean nexus.value 0
execute unless score @s nexus.pathfinder matches 1.. unless score @s nexus.collide_x matches 0 run scoreboard players set #boolean nexus.value 1
execute unless score @s nexus.pathfinder matches 1.. unless score @s nexus.collide_z matches 0 run scoreboard players set #boolean nexus.value 1
execute if score #boolean nexus.value matches 1 if score @s nexus.mot_y matches ..0 run function nexus:entity/generic/pathfinder/crawl/start
execute if score @s nexus.pathfinder matches 1.. run function nexus:entity/generic/pathfinder/crawl/process