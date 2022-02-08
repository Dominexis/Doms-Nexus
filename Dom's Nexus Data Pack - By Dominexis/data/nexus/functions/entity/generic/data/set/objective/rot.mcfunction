# Set data

data modify storage nexus:data tag set value {Rotation:[0.0f,0.0f]}
execute store result storage nexus:data tag.Rotation[0] float 0.1 run scoreboard players get @s nexus.yaw
execute store result storage nexus:data tag.Rotation[1] float 0.1 run scoreboard players get @s nexus.pitch
data modify entity @s Rotation set from storage nexus:data tag.Rotation