# Set boolean

scoreboard players set #boolean nexus.value 0







# Destroy blocks

scoreboard players set #destructible_boolean nexus.value 0
execute if score #motion_destroy_boolean nexus.value matches 1 if block ~ ~ ~ #nexus:motion/destructible/group/1 run scoreboard players set #destructible_boolean nexus.value 1
execute if score #motion_destroy_boolean nexus.value matches 2 if block ~ ~ ~ #nexus:motion/destructible/group/2 run scoreboard players set #destructible_boolean nexus.value 1
execute if score #motion_destroy_boolean nexus.value matches 3 if block ~ ~ ~ #nexus:motion/destructible/group/3 run scoreboard players set #destructible_boolean nexus.value 1
execute if score #motion_destroy_boolean nexus.value matches 4 if block ~ ~ ~ #nexus:motion/destructible/group/4 run scoreboard players set #destructible_boolean nexus.value 1
execute if score #motion_destroy_boolean nexus.value matches 5 if block ~ ~ ~ #nexus:motion/destructible/group/5 run scoreboard players set #destructible_boolean nexus.value 1

execute if score #destructible_boolean nexus.value matches 1 unless score #nearest_axis nexus.value matches 1 run function nexus:entity/generic/motion/wp/check/block/destroy
execute if score #destructible_boolean nexus.value matches 1 if score #nearest_axis nexus.value matches 1 if score #sign_y nexus.value matches 01 run function nexus:entity/generic/motion/wp/check/block/destroy
execute if score #destructible_boolean nexus.value matches 1 if score #nearest_axis nexus.value matches 1 if score #sign_y nexus.value matches -1 if score @s nexus.mot_y >= #downward_speed_floor_destroy_threshold nexus.value run function nexus:entity/generic/motion/wp/check/block/destroy







# Check current block

execute if score #boolean nexus.value matches ..0 unless block ~ ~ ~ #nexus:motion/passable/whole_block run scoreboard players set #boolean nexus.value 1
execute if block ~ ~ ~ #nexus:generic/fluid run scoreboard players set #fluid_boolean nexus.value 1
execute if block ~ ~ ~ #nexus:generic/fire run scoreboard players set #fire_boolean nexus.value 1







# Set collision boolean

execute if score #boolean nexus.value matches 1 run scoreboard players set #collision_boolean nexus.value 1