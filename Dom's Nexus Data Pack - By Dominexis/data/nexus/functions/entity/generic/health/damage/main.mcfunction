# Extract values

function nexus:entity/generic/data/extract/objective
execute store result score #armor nexus.value run attribute @s generic.armor get 1000
execute store result score #armor_toughness nexus.value run attribute @s generic.armor_toughness get 1000







# Get effect values

scoreboard players operation #resistance nexus.value = @s nexus.resistance
scoreboard players operation #resistance nexus.value *= #-1 nexus.value
scoreboard players add #resistance nexus.value 4
execute if score #resistance nexus.value matches ..-1 run scoreboard players set #resistance nexus.value 0







# Play burn sound

execute if score #damage_burn_boolean nexus.value matches 1 at @s run playsound minecraft:entity.generic.burn neutral @a







# Modify damage value

scoreboard players operation #damage nexus.value = #damage_amount nexus.value
execute if score #damage_armor_boolean nexus.value matches 1 run function nexus:entity/generic/damage/armor
scoreboard players operation #damage nexus.value *= #resistance nexus.value
scoreboard players operation #damage nexus.value /= #5 nexus.value







# Apply damage

scoreboard players operation @s nexus.health -= #damage nexus.value

scoreboard players set #math_00 nexus.value 1200
scoreboard players operation #math_00 nexus.value *= #resistance nexus.value
execute if entity @s[type=witch] run scoreboard players operation #math_00 nexus.value *= #15 nexus.value
execute if entity @s[type=witch] run scoreboard players operation #math_00 nexus.value /= #100 nexus.value

execute if score @s nexus.health matches ..0 run scoreboard players set @s nexus.health 0
execute if score @s nexus.health matches ..0 run kill @s
execute if score @s nexus.health matches 1.. run scoreboard players operation @s nexus.health += #math_00 nexus.value
execute if score @s nexus.health matches 1.. store result entity @s Health float 0.001 run scoreboard players get @s nexus.health
execute if score @s nexus.health matches 1.. run scoreboard players operation @s nexus.health -= #math_00 nexus.value
execute if score @s nexus.health matches 1.. run effect give @s[type=!#nexus:family/undead] instant_damage 1 0 true
execute if score @s nexus.health matches 1.. run effect give @s[type= #nexus:family/undead] instant_health 1 0 true







# Manage values

scoreboard players set @s nexus.hp_time 10







# Push scores if an event damage sensor

execute if entity @s[type=#nexus:generic/damage_sensor,tag=nexus.entity.damage_sensor.event] run function nexus:entity/generic/score/set/pos_mot_rot_target