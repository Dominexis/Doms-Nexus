# Get rotation

data modify storage nexus:data tag set value {Pose:{Head:[0.0f,0.0f,0.0f]}}
data modify storage nexus:data tag.Pose.Head set from entity @s Pose.Head
execute store result score @s nexus.pitch run data get storage nexus:data tag.Pose.Head[0] 10
execute store result score @s nexus.yaw run data get storage nexus:data tag.Pose.Head[1] 10
execute store result score @s nexus.roll run data get storage nexus:data tag.Pose.Head[2] 10