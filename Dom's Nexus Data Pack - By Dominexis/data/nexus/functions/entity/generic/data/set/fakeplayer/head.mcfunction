# Set rotation

data modify storage nexus:data tag.Pose.Head set value [0.0f,0.0f,0.0f]
execute store result storage nexus:data tag.Pose.Head[0] float 0.1 run scoreboard players get #entity_pitch nexus.value
execute store result storage nexus:data tag.Pose.Head[1] float 0.1 run scoreboard players get #entity_yaw nexus.value
execute store result storage nexus:data tag.Pose.Head[2] float 0.1 run scoreboard players get #entity_roll nexus.value
data modify entity @s Pose.Head set from storage nexus:data tag.Pose.Head