# Push previous values

scoreboard players operation @s nexus.prev_x = @s nexus.x
scoreboard players operation @s nexus.prev_y = @s nexus.y
scoreboard players operation @s nexus.prev_z = @s nexus.z
scoreboard players operation @s nexus.prev_mot_x = @s nexus.mot_x
scoreboard players operation @s nexus.prev_mot_y = @s nexus.mot_y
scoreboard players operation @s nexus.prev_mot_z = @s nexus.mot_z
scoreboard players operation @s nexus.prev_yaw = @s nexus.yaw
scoreboard players operation @s nexus.prev_pitch = @s nexus.pitch







# Manage timers

scoreboard players operation @s nexus.nbt_delay = #global nexus.ticks
scoreboard players operation @s nexus.nbt_delay -= @s nexus.nbt_ticks
scoreboard players operation @s nexus.nbt_ticks = #global nexus.ticks







# Extract data from entity

data modify storage nexus:data tag set from entity @s {}
execute store result score @s nexus.x run data get storage nexus:data tag.Pos[0] 1000
execute store result score @s nexus.y run data get storage nexus:data tag.Pos[1] 1000
execute store result score @s nexus.z run data get storage nexus:data tag.Pos[2] 1000
execute store result score @s nexus.mot_x run data get storage nexus:data tag.Motion[0] 1000
execute store result score @s nexus.mot_y run data get storage nexus:data tag.Motion[1] 1000
execute store result score @s nexus.mot_z run data get storage nexus:data tag.Motion[2] 1000
execute store result score @s nexus.yaw run data get storage nexus:data tag.Rotation[0] 10
execute store result score @s nexus.pitch run data get storage nexus:data tag.Rotation[1] 10
execute store result score @s nexus.invulnerable run data get storage nexus:data tag.Invulnerable
execute unless entity @s[type=!player,type=!#nexus:family/mob] store result score @s nexus.health run data get storage nexus:data tag.Health 1000