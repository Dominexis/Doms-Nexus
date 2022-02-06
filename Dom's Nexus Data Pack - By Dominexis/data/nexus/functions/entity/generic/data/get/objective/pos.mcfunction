# Get position

data modify storage nexus:data tag set value {Pos:[0.0d,0.0d,0.0d]}
data modify storage nexus:data tag.Pos set from entity @s Pos
execute store result score @s nexus.x run data get storage nexus:data tag.Pos[0] 1000
execute store result score @s nexus.y run data get storage nexus:data tag.Pos[1] 1000
execute store result score @s nexus.z run data get storage nexus:data tag.Pos[2] 1000