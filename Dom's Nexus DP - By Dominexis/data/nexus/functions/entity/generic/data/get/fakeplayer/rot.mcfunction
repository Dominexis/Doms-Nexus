# Get data

data modify storage nexus:data tag set value {Rotation:[0.0f,0.0f]}
data modify storage nexus:data tag.Rotation set from entity @s Rotation
execute store result score #entity_yaw nexus.value run data get storage nexus:data tag.Rotation[0] 10
execute store result score #entity_pitch nexus.value run data get storage nexus:data tag.Rotation[1] 10