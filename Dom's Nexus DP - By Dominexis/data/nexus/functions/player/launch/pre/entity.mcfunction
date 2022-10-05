# Get motion and invulnerability state

scoreboard players operation @s nexus.prev_mot_x = @s nexus.mot_x
scoreboard players operation @s nexus.prev_mot_y = @s nexus.mot_y
scoreboard players operation @s nexus.prev_mot_z = @s nexus.mot_z







# Extract data from entity

data modify storage nexus:data tag set from entity @s {}
execute store result score @s nexus.mot_x run data get storage nexus:data tag.Motion[0] 1000
execute store result score @s nexus.mot_y run data get storage nexus:data tag.Motion[1] 1000
execute store result score @s nexus.mot_z run data get storage nexus:data tag.Motion[2] 1000
execute store result score @s nexus.invulnerable run data get storage nexus:data tag.Invulnerable







# Modify entity data

data merge entity @s {Invulnerable:1b}







# Add tag

tag @s add nexus.entity.launch.invulnerable