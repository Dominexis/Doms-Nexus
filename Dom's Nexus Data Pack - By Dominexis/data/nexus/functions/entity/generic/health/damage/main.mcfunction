# Extract values

data modify storage nexus:data tag set from entity @s {}
execute store result score #health nexus.value run data get storage nexus:data tag.Health 1000
execute store result score #armor nexus.value run attribute @s generic.armor get 1000
execute store result score #armor_toughness nexus.value run attribute @s generic.armor_toughness get 1000







# Get effect values

execute store result score #boolean nexus.value if data storage nexus:data tag.ActiveEffects[{Id:11b}]
execute if score #boolean nexus.value matches 0 run scoreboard players set #resistance nexus.value -1
execute if score #boolean nexus.value matches 1 store result score #resistance nexus.value run data get storage nexus:data tag.ActiveEffects[{Id:11b}].Amplifier
scoreboard players operation #resistance nexus.value *= #-1 nexus.value
scoreboard players add #resistance nexus.value 4
execute if score #resistance nexus.value matches ..-1 run scoreboard players set #resistance nexus.value 0







# Extract values from damage variable

scoreboard players operation #damage nexus.value = @s nexus.damage
scoreboard players operation #damage nexus.value %= #100 nexus.value
scoreboard players operation #damage nexus.value *= #1000 nexus.value

scoreboard players operation #armor_boolean nexus.value = @s nexus.damage
scoreboard players operation #armor_boolean nexus.value /= #100 nexus.value
scoreboard players operation #armor_boolean nexus.value %= #2 nexus.value

scoreboard players operation #burn_boolean nexus.value = @s nexus.damage
scoreboard players operation #burn_boolean nexus.value /= #100 nexus.value
scoreboard players operation #burn_boolean nexus.value %= #10 nexus.value
scoreboard players operation #burn_boolean nexus.value /= #2 nexus.value
scoreboard players operation #burn_boolean nexus.value %= #2 nexus.value







# Play burn sound

execute if score #burn_boolean nexus.value matches 1 at @s run playsound minecraft:entity.generic.burn master @a







# Modify damage value

execute if score #armor_boolean nexus.value matches 1 run function nexus:entity/generic/damage/armor

scoreboard players operation #damage nexus.value *= #resistance nexus.value
scoreboard players operation #damage nexus.value /= #5 nexus.value







# Apply damage

scoreboard players operation #health nexus.value -= #damage nexus.value
scoreboard players operation @s nexus.health = #health nexus.value
execute if score @s nexus.health matches ..-1 run scoreboard players set @s nexus.health 0

scoreboard players set #math_00 nexus.value 1200
scoreboard players operation #math_00 nexus.value *= #resistance nexus.value
execute if entity @s[type=witch] run scoreboard players operation #math_00 nexus.value *= #15 nexus.value
execute if entity @s[type=witch] run scoreboard players operation #math_00 nexus.value /= #100 nexus.value
scoreboard players operation #health nexus.value += #math_00 nexus.value
execute if score #health nexus.value matches ..-1 run scoreboard players set #health nexus.value 0

execute if score #health nexus.value matches 1.. store result entity @s Health float 0.001 run scoreboard players get #health nexus.value
execute if score #health nexus.value matches 0 run kill @s

execute if score #health nexus.value matches 1.. run effect give @s[type=!#nexus:family/undead] instant_damage 1 0 true
execute if score #health nexus.value matches 1.. run effect give @s[type= #nexus:family/undead] instant_health 1 0 true







# Set time delay

scoreboard players set @s nexus.hp_time 10







# Reset values

scoreboard players set @s nexus.damage 0