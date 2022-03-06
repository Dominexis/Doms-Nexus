# Decrement timer

scoreboard players operation @s nexus.anim_time_05 += #missed_ticks nexus.value







# Stop animation when timer hits the end

execute if score @s nexus.anim_time_05 matches 10.. run function temp:entity/spider_brain/animate/damage/stop