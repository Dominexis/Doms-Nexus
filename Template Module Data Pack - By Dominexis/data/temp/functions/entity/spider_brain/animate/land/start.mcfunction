# Reset timer

scoreboard players set @s[tag=!temp.entity.animate.land] nexus.anim_time_03 0







# Play sound

execute if entity @s[tag=!temp.entity.animate.land] run playsound minecraft:entity.generic.big_fall hostile @a







# Modify pathfinder tag

tag @s[tag=!temp.entity.animate.land] remove temp.entity.property.pathfinder_disabled







# Add tag

tag @s add temp.entity.animate.land