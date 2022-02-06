# Get current health value

execute store result score #damage_sensor_health nexus.value run data get entity @s Health 1000







# Modify health score from current health

scoreboard players operation @s nexus.health < #damage_sensor_health nexus.value







# Reassign max health

effect give @s[type=!#nexus:family/undead] instant_health 1 124 true
effect give @s[type= #nexus:family/undead] instant_damage 1 124 true