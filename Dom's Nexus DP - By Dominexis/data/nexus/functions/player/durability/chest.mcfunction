# Modify score

scoreboard players operation #durability_modifier nexus.value *= #2 nexus.value
scoreboard players remove #durability_modifier nexus.value 1







# Get unbreaking level

scoreboard players set #unbreaking_damage_dodge nexus.value 0

scoreboard players set #unbreaking_level nexus.value 0
execute store result score #unbreaking_boolean nexus.value if predicate nexus:equipment/chest/unbreaking
execute if score #unbreaking_boolean nexus.value matches 1 store result score #unbreaking_level nexus.value run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score #unbreaking_boolean nexus.value matches 1 run function nexus:player/durability/unbreaking/armor







# Modify item

execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/chest/leather_chestplate  ] armor.chest nexus:durability/leather_chestplate
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/chest/golden_chestplate   ] armor.chest nexus:durability/golden_chestplate
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/chest/chainmail_chestplate] armor.chest nexus:durability/chainmail_chestplate
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/chest/iron_chestplate     ] armor.chest nexus:durability/iron_chestplate
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/chest/diamond_chestplate  ] armor.chest nexus:durability/diamond_chestplate
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/chest/netherite_chestplate] armor.chest nexus:durability/netherite_chestplate
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/chest/elytra              ] armor.chest nexus:durability/elytra







# Destroy item

execute store result score #broken_boolean nexus.value if predicate nexus:equipment/chest/broken
execute if score #broken_boolean nexus.value matches 1 run item replace entity @s armor.chest with air
execute if score #broken_boolean nexus.value matches 1 at @s run playsound minecraft:entity.item.break player @a







# Modify score

scoreboard players add #durability_modifier nexus.value 1
scoreboard players operation #durability_modifier nexus.value /= #2 nexus.value