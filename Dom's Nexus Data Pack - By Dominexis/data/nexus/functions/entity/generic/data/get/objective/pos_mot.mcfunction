# Get data

data modify storage nexus:data tag set value {Pos:[0.0d,0.0d,0.0d],Motion:[0.0d,0.0d,0.0d]}
data modify storage nexus:data tag set from entity @s {}
execute store result score @s nexus.x run data get storage nexus:data tag.Pos[0] 1000
execute store result score @s nexus.y run data get storage nexus:data tag.Pos[1] 1000
execute store result score @s nexus.z run data get storage nexus:data tag.Pos[2] 1000
execute store result score @s nexus.mot_x run data get storage nexus:data tag.Motion[0] 1000
execute store result score @s nexus.mot_y run data get storage nexus:data tag.Motion[1] 1000
execute store result score @s nexus.mot_z run data get storage nexus:data tag.Motion[2] 1000