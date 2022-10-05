# Set booleans

scoreboard players set #collision_boolean nexus.value 0
scoreboard players set #fluid_boolean nexus.value 0
scoreboard players set #fire_boolean nexus.value 0







# Push values

scoreboard players operation #hitbox_x_temp nexus.value = #hitbox_x nexus.value
scoreboard players operation #hitbox_y_temp nexus.value = #hitbox_y nexus.value
scoreboard players operation #hitbox_z_temp nexus.value = #hitbox_z nexus.value







# Initialize climb booleans

scoreboard players set #climb_boolean_0 nexus.value 0
scoreboard players set #climb_boolean_1 nexus.value 0
scoreboard players set #climb_boolean_2 nexus.value 0
scoreboard players set #climb_boolean_3 nexus.value 0







# Scan hitbox for collision points

execute if score #nearest_axis nexus.value matches 0 if score #sign_x nexus.value matches -1 run function nexus:entity/generic/motion/wv/check/hitbox/x/y
execute if score #nearest_axis nexus.value matches 1 if score #sign_y nexus.value matches -1 run function nexus:entity/generic/motion/wv/check/hitbox/y/x
execute if score #nearest_axis nexus.value matches 2 if score #sign_z nexus.value matches -1 run function nexus:entity/generic/motion/wv/check/hitbox/z/y
execute if score #nearest_axis nexus.value matches 0 if score #sign_x nexus.value matches 01 run function nexus:entity/generic/motion/wv/check/hitbox/x/x
execute if score #nearest_axis nexus.value matches 1 if score #sign_y nexus.value matches 01 run function nexus:entity/generic/motion/wv/check/hitbox/y/y
execute if score #nearest_axis nexus.value matches 2 if score #sign_z nexus.value matches 01 run function nexus:entity/generic/motion/wv/check/hitbox/z/z







# Adjust motion if inside block

execute if score #collision_boolean nexus.value matches 0 if score #fluid_boolean nexus.value matches 1 run scoreboard players set #motion_fluid_boolean nexus.value 1
execute if score #collision_boolean nexus.value matches 0 if score #fire_boolean nexus.value matches 1 run scoreboard players set #motion_fire_boolean nexus.value 1
execute if score #collision_boolean nexus.value matches 1 run function nexus:entity/generic/motion/wv/check/collision/main







# Run traversal function

execute if score #motion_end nexus.value matches 0 if score #collision_boolean nexus.value matches 1 if score #climb_amount nexus.value matches 1 positioned ~ ~1 ~ run function nexus:entity/generic/motion/wv/traverse/main
execute if score #motion_end nexus.value matches 0 if score #collision_boolean nexus.value matches 1 if score #climb_amount nexus.value matches 2 positioned ~ ~2 ~ run function nexus:entity/generic/motion/wv/traverse/main
execute if score #collision_boolean nexus.value matches ..0 run function nexus:entity/generic/motion/wv/traverse/main