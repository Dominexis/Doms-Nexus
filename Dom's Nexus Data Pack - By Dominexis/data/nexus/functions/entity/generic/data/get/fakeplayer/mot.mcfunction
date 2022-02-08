# Get data

data modify storage nexus:data tag set value {Motion:[0.0d,0.0d,0.0d]}
data modify storage nexus:data tag.Motion set from entity @s Motion
execute store result score #entity_mot_x nexus.value run data get storage nexus:data tag.Motion[0] 1000
execute store result score #entity_mot_y nexus.value run data get storage nexus:data tag.Motion[1] 1000
execute store result score #entity_mot_z nexus.value run data get storage nexus:data tag.Motion[2] 1000