# Rotate rapidly

scoreboard players set #math_00 temp.value 200
scoreboard players operation #math_00 temp.value *= #missed_ticks nexus.value
scoreboard players operation @s nexus.yaw += #math_00 temp.value







# Motion

function temp:entity/skull/mode/generic/motion







# Collisions

function temp:entity/skull/mode/generic/collision







# Manage animation

scoreboard players operation @s nexus.animation -= #missed_ticks nexus.value
execute if score @s nexus.animation matches ..0 at @s run function temp:entity/skull/mode/generic/terminate