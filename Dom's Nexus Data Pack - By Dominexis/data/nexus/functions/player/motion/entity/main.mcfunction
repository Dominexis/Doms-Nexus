# Execute function as player

scoreboard players operation #local nexus.id = @s nexus.id
execute as @a[gamemode=!spectator,tag=nexus.player.motion] if score @s nexus.id = #local nexus.id run function nexus:player/motion/entity/player







# Modify motion

scoreboard players operation @s nexus.poi_x = #entity_x nexus.value
scoreboard players operation @s nexus.poi_z = #entity_z nexus.value
scoreboard players operation @s nexus.poi_x -= @s nexus.x
scoreboard players operation @s nexus.poi_z -= @s nexus.z
scoreboard players operation @s nexus.poi_x /= #8 nexus.value
scoreboard players operation @s nexus.poi_z /= #8 nexus.value
scoreboard players operation @s nexus.mot_x += @s nexus.poi_x
scoreboard players operation @s nexus.mot_z += @s nexus.poi_z

scoreboard players operation @s nexus.mot_y += #gravity nexus.value







# Move entity along current trajectory

scoreboard players set #hitbox_offset nexus.value 900
scoreboard players set #hitbox_height nexus.value 900
scoreboard players set #hitbox_width nexus.value 300

scoreboard players set #collision_friction_numerator nexus.value 100
scoreboard players set #fluid_friction_numerator nexus.value 90
scoreboard players set #climb_friction_numerator nexus.value 100
scoreboard players set #friction_numerator nexus.value 90
scoreboard players set #friction_denominator nexus.value 100

scoreboard players set #motion_climb_boolean nexus.value 0
scoreboard players set #motion_destroy_boolean nexus.value 0
scoreboard players set #motion_halt_boolean nexus.value 1
scoreboard players set #motion_missed_ticks_boolean nexus.value 0
scoreboard players set #motion_limit nexus.value 0

function nexus:entity/generic/motion/hv/main

scoreboard players operation #temp_value nexus.value = @s nexus.collide
scoreboard players operation #temp_value nexus.value = #collision_y nexus.value







# Teleport player to current position

execute at @s run teleport @a[tag=nexus.player.target,limit=1] ~ ~ ~







# Apply slow falling to player

effect give @a[tag=nexus.player.target,limit=1] slow_falling 1 0 true







# Termination

scoreboard players set #boolean nexus.value 0

execute if score @s nexus.collide matches 1 run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.y matches ..-96000 run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.mot_x matches -5..5 if score @s nexus.mot_y matches -5..5 if score @s nexus.mot_z matches -5..5 run scoreboard players set #boolean nexus.value 1
execute unless entity @a[tag=nexus.player.target,limit=1] run scoreboard players set #boolean nexus.value 1

execute if score #boolean nexus.value matches 1 run function nexus:player/motion/entity/terminate







# Remove target tag

tag @a remove nexus.player.target