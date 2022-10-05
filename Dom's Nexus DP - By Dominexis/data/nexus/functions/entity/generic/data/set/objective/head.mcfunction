# Set data

data modify storage nexus:data tag.Pose.Head set value [0.0f,0.0f,0.0f]
execute store result storage nexus:data tag.Pose.Head[0] float 0.1 run scoreboard players get @s nexus.pitch
execute store result storage nexus:data tag.Pose.Head[1] float 0.1 run scoreboard players get @s nexus.yaw
execute store result storage nexus:data tag.Pose.Head[2] float 0.1 run scoreboard players get @s nexus.roll
data modify entity @s Pose.Head set from storage nexus:data tag.Pose.Head