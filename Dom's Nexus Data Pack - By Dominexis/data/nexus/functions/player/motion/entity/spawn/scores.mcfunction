# Assign position and motion

scoreboard players operation @s nexus.x = #entity_x nexus.value
scoreboard players operation @s nexus.y = #entity_y nexus.value
scoreboard players operation @s nexus.z = #entity_z nexus.value
scoreboard players set @s nexus.mot_x 0
scoreboard players set @s nexus.mot_y 0
scoreboard players set @s nexus.mot_z 0
scoreboard players set @s nexus.prev_mot_x 0
scoreboard players set @s nexus.prev_mot_y 0
scoreboard players set @s nexus.prev_mot_z 0
scoreboard players set @s nexus.poi_x 0
scoreboard players set @s nexus.poi_y 0
scoreboard players set @s nexus.poi_z 0







# Assign miscellaneous scores

scoreboard players operation @s nexus.id = #local nexus.id
scoreboard players set @s nexus.mass 1000







# Remove target tag

tag @s remove nexus.entity.target.spawn