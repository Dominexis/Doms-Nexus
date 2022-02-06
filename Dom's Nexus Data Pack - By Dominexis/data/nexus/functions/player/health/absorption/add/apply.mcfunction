# Add extra hearts to health

execute store result score #absorption_amount nexus.value run data get storage nexus:data tag.AbsorptionAmount 1000
scoreboard players operation #health_offset nexus.value += #absorption_amount nexus.value
scoreboard players operation #health_offset nexus.value -= @s nexus.abs_amount







# Push variables

scoreboard players operation @s nexus.abs_level = #absorption_level nexus.value
execute store result score @s nexus.abs_timer run data get storage nexus:data tag.ActiveEffects[{Id:22b}].Duration







# Assign health score

execute store result score @s nexus.health run data get storage nexus:data tag.Health 1000