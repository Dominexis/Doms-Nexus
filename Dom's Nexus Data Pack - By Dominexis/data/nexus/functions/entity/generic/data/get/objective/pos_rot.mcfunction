# Get position and rotation

data modify storage nexus:data tag set value {Pos:[0.0d,0.0d,0.0d],Rotation:[0.0f,0.0f]}
data modify storage nexus:data tag set from entity @s {}
execute store result score @s nexus.x run data get storage nexus:data tag.Pos[0] 1000
execute store result score @s nexus.y run data get storage nexus:data tag.Pos[1] 1000
execute store result score @s nexus.z run data get storage nexus:data tag.Pos[2] 1000
execute store result score @s nexus.yaw run data get storage nexus:data tag.Rotation[0] 10
execute store result score @s nexus.pitch run data get storage nexus:data tag.Rotation[1] 10