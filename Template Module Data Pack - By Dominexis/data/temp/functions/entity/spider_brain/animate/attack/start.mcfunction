# Reset timer

scoreboard players set @s[tag=!temp.entity.animate.attack] nexus.anim_time_04 0







# Play sound

execute if entity @s[tag=!temp.entity.animate.attack] run playsound minecraft:entity.guardian.ambient_land hostile @a







# Add tag

tag @s add temp.entity.animate.attack