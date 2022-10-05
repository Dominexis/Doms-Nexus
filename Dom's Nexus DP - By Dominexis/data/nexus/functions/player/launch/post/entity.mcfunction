# Assign NBT data

data modify storage nexus:data tag set value {Motion:[0.0d,0.0d,0.0d],Invulnerable:1b}
execute store result storage nexus:data tag.Motion[0] double 0.001 run scoreboard players get @s nexus.mot_x
execute store result storage nexus:data tag.Motion[1] double 0.001 run scoreboard players get @s nexus.mot_y
execute store result storage nexus:data tag.Motion[2] double 0.001 run scoreboard players get @s nexus.mot_z
execute store result storage nexus:data tag.Invulnerable byte 1 run scoreboard players get @s nexus.invulnerable
data modify entity @s {} merge from storage nexus:data tag







# Push scores

scoreboard players operation @s nexus.mot_x = @s nexus.prev_mot_x
scoreboard players operation @s nexus.mot_y = @s nexus.prev_mot_y
scoreboard players operation @s nexus.mot_z = @s nexus.prev_mot_z







# Remove tag

tag @s remove nexus.entity.launch.invulnerable