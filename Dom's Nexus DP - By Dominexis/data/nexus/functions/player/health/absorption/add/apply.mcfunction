# Add extra hearts to health

execute store result score #absorption_amount nexus.value run data get storage nexus:data tag.AbsorptionAmount 1000
scoreboard players operation @s nexus.hp_offset += #absorption_amount nexus.value
scoreboard players operation @s nexus.hp_offset -= @s nexus.abs_amount







# Push variables

scoreboard players operation @s nexus.abs_level = #absorption_level nexus.value
execute store result score @s nexus.abs_timer run data get storage nexus:data tag.ActiveEffects[{Id:22}].Duration







# Add tag to indicate that health was modified

tag @s add nexus.player.health_modify