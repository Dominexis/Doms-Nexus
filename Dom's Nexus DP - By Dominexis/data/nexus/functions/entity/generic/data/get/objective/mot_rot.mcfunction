# Get data

data modify storage nexus:data tag set value {Motion:[0.0d,0.0d,0.0d],Rotation:[0.0f,0.0f]}
data modify storage nexus:data tag set from entity @s {}
execute store result score @s nexus.mot_x run data get storage nexus:data tag.Motion[0] 1000
execute store result score @s nexus.mot_y run data get storage nexus:data tag.Motion[1] 1000
execute store result score @s nexus.mot_z run data get storage nexus:data tag.Motion[2] 1000
execute store result score @s nexus.yaw run data get storage nexus:data tag.Rotation[0] 10
execute store result score @s nexus.pitch run data get storage nexus:data tag.Rotation[1] 10