# Modify score

scoreboard players operation #durability_modifier nexus.value *= #2 nexus.value
scoreboard players remove #durability_modifier nexus.value 1







# Get unbreaking level

scoreboard players set #unbreaking_damage_dodge nexus.value 0

scoreboard players set #unbreaking_level nexus.value 0
execute store result score #unbreaking_boolean nexus.value if predicate nexus:equipment/feet/unbreaking
execute if score #unbreaking_boolean nexus.value matches 1 store result score #unbreaking_level nexus.value run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score #unbreaking_boolean nexus.value matches 1 run function nexus:player/durability/unbreaking/armor







# Modify item

execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/feet/leather_boots  ] armor.feet nexus:durability/leather_boots
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/feet/golden_boots   ] armor.feet nexus:durability/golden_boots
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/feet/chainmail_boots] armor.feet nexus:durability/chainmail_boots
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/feet/iron_boots     ] armor.feet nexus:durability/iron_boots
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/feet/diamond_boots  ] armor.feet nexus:durability/diamond_boots
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/feet/netherite_boots] armor.feet nexus:durability/netherite_boots







# Destroy item

execute store result score #broken_boolean nexus.value if predicate nexus:equipment/feet/broken
execute if score #broken_boolean nexus.value matches 1 run item replace entity @s armor.feet with air
execute if score #broken_boolean nexus.value matches 1 at @s run playsound minecraft:entity.item.break player @a







# Modify score

scoreboard players add #durability_modifier nexus.value 1
scoreboard players operation #durability_modifier nexus.value /= #2 nexus.value