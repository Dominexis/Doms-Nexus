# Collisions

execute if score #collision_y nexus.value matches 1 if score @s nexus.mot_y matches ..-700 at @s run playsound minecraft:block.stone.break hostile @a ~ ~ ~
execute if score #collision_x nexus.value matches 1 run scoreboard players set @s nexus.mot_x 0
execute if score #collision_y nexus.value matches 1 run scoreboard players operation @s nexus.mot_y *= #-1 nexus.value
execute if score #collision_z nexus.value matches 1 run scoreboard players set @s nexus.mot_z 0