# Push scores

execute unless score @s nexus.hp_time matches 1.. if entity @s[type=#nexus:generic/damage_sensor,tag=nexus.entity.damage_sensor.event] run function nexus:entity/generic/score/set/pos_rot_target







# Set damage value

execute unless score @s nexus.hp_time matches 1.. run scoreboard players operation @s nexus.damage = #entity_damage nexus.value