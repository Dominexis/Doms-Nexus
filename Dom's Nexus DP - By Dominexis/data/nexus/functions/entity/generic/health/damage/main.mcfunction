# Set attack boolean

scoreboard players set #damage_attack_boolean nexus.value 1







# Extract values

execute store result score #armor nexus.value run attribute @s generic.armor get 1000
execute store result score #armor_toughness nexus.value run attribute @s generic.armor_toughness get 1000







# Reduce damage with armor

scoreboard players operation #damage nexus.value = #damage_amount nexus.value
execute if score #damage_armor_boolean nexus.value matches 1 run function nexus:entity/generic/damage/armor







# Reduce damage with resistance

function nexus:entity/generic/stats/resistance

scoreboard players operation #resistance nexus.value = @s nexus.resistance
scoreboard players operation #resistance nexus.value *= #-1 nexus.value
scoreboard players add #resistance nexus.value 4

scoreboard players operation #damage nexus.value *= #resistance nexus.value
scoreboard players operation #damage nexus.value /= #5 nexus.value







# Reduce damage with protection

function nexus:entity/generic/stats/protection

scoreboard players operation #protection nexus.value = @s nexus.protection
scoreboard players operation #protection nexus.value *= #-1 nexus.value
scoreboard players add #protection nexus.value 25

scoreboard players operation #damage nexus.value *= #protection nexus.value
scoreboard players operation #damage nexus.value /= #25 nexus.value







# Apply damage

scoreboard players operation @s nexus.health -= #damage nexus.value

scoreboard players set #health_buffer nexus.value 6000
execute if entity @s[type=ender_dragon] run scoreboard players set #health_buffer nexus.value 0

scoreboard players operation #health_buffer nexus.value *= #resistance nexus.value
scoreboard players operation #health_buffer nexus.value /= #5 nexus.value

scoreboard players operation #health_buffer nexus.value *= #protection nexus.value
scoreboard players operation #health_buffer nexus.value /= #25 nexus.value

execute if entity @s[type=witch] run scoreboard players operation #health_buffer nexus.value *= #15 nexus.value
execute if entity @s[type=witch] run scoreboard players operation #health_buffer nexus.value /= #100 nexus.value

execute at @s[type=ender_dragon,scores={nexus.health=1..}] run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ 5

scoreboard players set @s[scores={nexus.health=..0}] nexus.health 0
kill @s[type=!ender_dragon,scores={nexus.health=0}]
data modify entity @s[type=ender_dragon,scores={nexus.health=0}] DragonPhase set value 9

execute if score @s nexus.health matches 1.. run scoreboard players operation @s nexus.health += #health_buffer nexus.value
execute if score @s nexus.health matches 1.. store result entity @s Health float 0.001 run scoreboard players get @s nexus.health
execute if score @s nexus.health matches 1.. run scoreboard players operation @s nexus.health -= #health_buffer nexus.value
execute if score @s nexus.health matches 1.. run effect give @s[type=!#nexus:family/undead,type=!#nexus:family/boss] instant_damage 1 0 true
execute if score @s nexus.health matches 1.. run effect give @s[type= #nexus:family/undead,type=!#nexus:family/boss] instant_health 1 0 true
execute if score @s nexus.health matches 1.. run data modify entity @s[type=wither] ActiveEffects append value {Id:6,Duration:1,ShowParticles:0b}







# Manage values

scoreboard players set @s nexus.hp_time 10







# Push scores if an event damage sensor

execute if entity @s[type=#nexus:generic/damage_sensor,tag=nexus.entity.damage_sensor.event] run function nexus:entity/generic/score/set/pos_mot_rot_target







# Play burn sound

execute if score #damage_burn_boolean nexus.value matches 1 at @s run playsound minecraft:entity.generic.burn neutral @a