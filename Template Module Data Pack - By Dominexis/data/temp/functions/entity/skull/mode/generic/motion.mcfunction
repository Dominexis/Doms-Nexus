# Apply gravity

scoreboard players operation #math_00 temp.value = #gravity nexus.value
scoreboard players operation #math_00 temp.value *= #missed_ticks nexus.value
scoreboard players operation @s nexus.mot_y += #math_00 temp.value







# Apply push from entities

scoreboard players set #player_push_boolean nexus.value 1
function nexus:entity/generic/push/main







# Move entity along current trajectory

scoreboard players set #hitbox_offset nexus.value 450
scoreboard players set #hitbox_width nexus.value 450
scoreboard players set #hitbox_height nexus.value 450

scoreboard players set #collision_friction_numerator nexus.value 93
scoreboard players set #fluid_friction_numerator nexus.value 60
scoreboard players set #climb_friction_numerator nexus.value 100
scoreboard players set #friction_numerator nexus.value 95
scoreboard players set #friction_denominator nexus.value 100

scoreboard players set #motion_climb_boolean nexus.value 0
scoreboard players set #motion_destroy_boolean nexus.value 0
scoreboard players set #motion_halt_boolean nexus.value 0
scoreboard players set #motion_missed_ticks_boolean nexus.value 1
scoreboard players set #motion_limit nexus.value 3000

execute positioned ~ ~1.7 ~ run function nexus:entity/generic/motion/hv/main