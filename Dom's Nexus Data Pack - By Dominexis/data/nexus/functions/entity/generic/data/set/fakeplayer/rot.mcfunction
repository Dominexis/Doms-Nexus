# Set rotation

data modify storage nexus:data tag set value {Rotation:[0.0f,0.0f]}
execute store result storage nexus:data tag.Rotation[0] float 0.1 run scoreboard players get #entity_yaw nexus.value
execute store result storage nexus:data tag.Rotation[1] float 0.1 run scoreboard players get #entity_pitch nexus.value
data modify entity @s Rotation set from storage nexus:data tag.Rotation