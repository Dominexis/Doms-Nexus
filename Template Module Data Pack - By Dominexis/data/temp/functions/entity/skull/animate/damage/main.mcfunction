# Decrement timer

scoreboard players operation @s nexus.anim_time_00 -= #missed_ticks nexus.value







# Stop animation when time hits 0

execute if score @s nexus.anim_time_00 matches ..0 run function temp:entity/skull/animate/damage/stop