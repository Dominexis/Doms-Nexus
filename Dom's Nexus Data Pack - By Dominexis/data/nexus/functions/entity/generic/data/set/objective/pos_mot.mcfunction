# Set data

data modify storage nexus:data tag set value {Pos:[0.0d,0.0d,0.0d],Motion:[0.0d,0.0d,0.0d]}
execute store result storage nexus:data tag.Pos[0] double 0.001 run scoreboard players get @s nexus.x
execute store result storage nexus:data tag.Pos[1] double 0.001 run scoreboard players get @s nexus.y
execute store result storage nexus:data tag.Pos[2] double 0.001 run scoreboard players get @s nexus.z
execute store result storage nexus:data tag.Motion[0] double 0.001 run scoreboard players get @s nexus.mot_x
execute store result storage nexus:data tag.Motion[1] double 0.001 run scoreboard players get @s nexus.mot_y
execute store result storage nexus:data tag.Motion[2] double 0.001 run scoreboard players get @s nexus.mot_z
data modify entity @s {} merge from storage nexus:data tag