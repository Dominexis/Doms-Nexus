# Reset timer

scoreboard players set @s[tag=!temp.entity.animate.jump] nexus.anim_time_02 0







# Modify pathfinder tag

execute unless score @s nexus.pathfinder matches 1.. run tag @s[tag=!temp.entity.animate.jump,tag=!temp.entity.animate.land] add temp.entity.property.pathfinder_disabled







# Add tag

tag @s add temp.entity.animate.jump