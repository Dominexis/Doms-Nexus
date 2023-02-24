# Modify score

scoreboard players operation #durability_modifier nexus.value *= #2 nexus.value
scoreboard players remove #durability_modifier nexus.value 1







# Get unbreaking level

scoreboard players set #unbreaking_damage_dodge nexus.value 0

scoreboard players set #unbreaking_level nexus.value 0
execute store result score #unbreaking_boolean nexus.value if predicate nexus:equipment/head/unbreaking
execute if score #unbreaking_boolean nexus.value matches 1 store result score #unbreaking_level nexus.value run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score #unbreaking_boolean nexus.value matches 1 run function nexus:player/durability/unbreaking/armor







# Modify item

execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/head/leather_helmet  ] armor.head nexus:durability/leather_helmet
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/head/golden_helmet   ] armor.head nexus:durability/golden_helmet
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/head/chainmail_helmet] armor.head nexus:durability/chainmail_helmet
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/head/iron_helmet     ] armor.head nexus:durability/iron_helmet
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/head/diamond_helmet  ] armor.head nexus:durability/diamond_helmet
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/head/netherite_helmet] armor.head nexus:durability/netherite_helmet
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/head/turtle_helmet   ] armor.head nexus:durability/turtle_helmet







# Destroy item

execute store result score #broken_boolean nexus.value if predicate nexus:equipment/head/broken
execute if score #broken_boolean nexus.value matches 1 run item replace entity @s armor.head with air
execute if score #broken_boolean nexus.value matches 1 at @s run playsound minecraft:entity.item.break player @a







# Modify score

scoreboard players add #durability_modifier nexus.value 1
scoreboard players operation #durability_modifier nexus.value /= #2 nexus.value