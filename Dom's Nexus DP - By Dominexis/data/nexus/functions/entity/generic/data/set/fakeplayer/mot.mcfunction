# Set data

data modify storage nexus:data tag set value {Motion:[0.0d,0.0d,0.0d]}
execute store result storage nexus:data tag.Motion[0] double 0.001 run scoreboard players get #entity_mot_x nexus.value
execute store result storage nexus:data tag.Motion[1] double 0.001 run scoreboard players get #entity_mot_y nexus.value
execute store result storage nexus:data tag.Motion[2] double 0.001 run scoreboard players get #entity_mot_z nexus.value
data modify entity @s Motion set from storage nexus:data tag.Motion