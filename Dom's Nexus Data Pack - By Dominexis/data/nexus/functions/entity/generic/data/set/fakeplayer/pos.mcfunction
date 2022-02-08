# Set data

data modify storage nexus:data tag set value {Pos:[0.0d,0.0d,0.0d]}
execute store result storage nexus:data tag.Pos[0] double 0.001 run scoreboard players get #entity_x nexus.value
execute store result storage nexus:data tag.Pos[1] double 0.001 run scoreboard players get #entity_y nexus.value
execute store result storage nexus:data tag.Pos[2] double 0.001 run scoreboard players get #entity_z nexus.value
data modify entity @s Pos set from storage nexus:data tag.Pos