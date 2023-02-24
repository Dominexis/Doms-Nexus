# Subtract from health

scoreboard players operation @s nexus.hp_offset -= #absorption_amount nexus.value







# Reset variables

scoreboard players set #absorption_amount nexus.value 0
scoreboard players set @s nexus.abs_level 0







# Add tag to indicate that health was modified

tag @s add nexus.player.health_modify