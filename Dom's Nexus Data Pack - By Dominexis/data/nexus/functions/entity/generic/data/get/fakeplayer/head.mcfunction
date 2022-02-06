# Get rotation

data modify storage nexus:data tag set value {Pose:{Head:[0.0f,0.0f,0.0f]}}
data modify storage nexus:data tag.Pose.Head set from entity @s Pose.Head
execute store result score #entity_pitch nexus.value run data get storage nexus:data tag.Pose.Head[0] 10
execute store result score #entity_yaw nexus.value run data get storage nexus:data tag.Pose.Head[1] 10
execute store result score #entity_roll nexus.value run data get storage nexus:data tag.Pose.Head[2] 10