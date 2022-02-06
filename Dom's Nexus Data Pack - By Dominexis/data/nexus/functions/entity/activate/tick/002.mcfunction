# Target entities

scoreboard players operation #local nexus.id = @s nexus.id
execute if score @s nexus.id_bool matches 1 as @e[type=#nexus:generic/entity,distance=..002,tag=nexus.entity] if score @s nexus.id = #local nexus.id run tag @s add nexus.entity.target
execute if score @s nexus.id_bool matches 1 as @a if score @s nexus.id = #local nexus.id run tag @s add nexus.player.target
execute if score @s nexus.v_id_bool matches 1 as @a if score @s nexus.vehicle = #local nexus.id run tag @s add nexus.player.target







# Damage sensor management

execute if score @s nexus.dmg_s_bool matches 1 as @e[type=#nexus:generic/damage_sensor,distance=..002,tag=nexus.entity.damage_sensor.activate,tag=nexus.entity.target] run function nexus:entity/generic/damage_sensor/tick







# Tick entity

function #nexus:entity/main







# Air toggle area effect clouds

execute if score @s nexus.id_bool matches 1 if score @s nexus.air_t_bool matches 1 at @s as @e[type=area_effect_cloud,distance=..002,tag=nexus.entity.air_toggle,tag=nexus.entity.target] store result entity @s Air short 1 run scoreboard players get #air_toggle_timer nexus.value
execute unless score @s nexus.id_bool matches 1 if score @s nexus.air_t_bool matches 1 if entity @s[type=area_effect_cloud,tag=nexus.entity.air_toggle] store result entity @s Air short 1 run scoreboard players get #air_toggle_timer nexus.value







# Remove tags

execute if score @s nexus.id_bool matches 1 at @s run tag @e[type=#nexus:generic/entity,distance=..002,tag=nexus.entity] remove nexus.entity.target
execute if score @s nexus.id_bool matches 1 run tag @a remove nexus.player.target
execute unless score @s nexus.id_bool matches 1 if score @s nexus.v_id_bool matches 1 run tag @a remove nexus.player.target