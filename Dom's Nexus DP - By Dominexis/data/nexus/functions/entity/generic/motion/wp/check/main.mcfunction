# Set booleans

scoreboard players set #collision_boolean nexus.value 0
scoreboard players set #fluid_boolean nexus.value 0
scoreboard players set #fire_boolean nexus.value 0







# Check block for collision

function nexus:entity/generic/motion/wp/check/block/main







# Adjust motion if inside block

execute if score #collision_boolean nexus.value matches 0 if score #fluid_boolean nexus.value matches 1 run scoreboard players set #motion_fluid_boolean nexus.value 1
execute if score #collision_boolean nexus.value matches 0 if score #fire_boolean nexus.value matches 1 run scoreboard players set #motion_fire_boolean nexus.value 1
execute if score #collision_boolean nexus.value matches 1 run function nexus:entity/generic/motion/wp/check/collision/main







# Run traversal function

execute if score #collision_boolean nexus.value matches ..0 run function nexus:entity/generic/motion/wp/traverse/main