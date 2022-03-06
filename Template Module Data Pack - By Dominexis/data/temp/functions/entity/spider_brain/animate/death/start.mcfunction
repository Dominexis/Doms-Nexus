# Reset timer

scoreboard players set @s[tag=!temp.entity.animate.death] nexus.anim_time_06 0







# Modify item displays

execute if entity @s[tag=!temp.entity.animate.death] run data modify entity @e[type=armor_stand,distance=..8,tag=temp.entity.part.brain,tag=nexus.entity.target,limit=1] ArmorItems[3].tag.CustomModelData set value 999911
execute if entity @s[tag=!temp.entity.animate.death] as @e[type=armor_stand,distance=..8,tag=temp.entity.part.leg,tag=nexus.entity.target] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 999912







# Play sound

execute if entity @s[tag=!temp.entity.animate.death] run playsound minecraft:entity.guardian.death_land hostile @a







# Add tag

tag @s add temp.entity.animate.death