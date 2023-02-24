# Modify score

scoreboard players operation #durability_modifier nexus.value *= #2 nexus.value
scoreboard players remove #durability_modifier nexus.value 1







# Get unbreaking level

scoreboard players set #unbreaking_damage_dodge nexus.value 0

scoreboard players set #unbreaking_level nexus.value 0
execute store result score #unbreaking_boolean nexus.value if predicate nexus:equipment/offhand/unbreaking
execute if score #unbreaking_boolean nexus.value matches 1 store result score #unbreaking_level nexus.value run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score #unbreaking_boolean nexus.value matches 1 run function nexus:player/durability/unbreaking/tool







# Modify item

execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/golden_sword            ] weapon.offhand nexus:durability/golden_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/golden_pickaxe          ] weapon.offhand nexus:durability/golden_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/golden_shovel           ] weapon.offhand nexus:durability/golden_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/golden_axe              ] weapon.offhand nexus:durability/golden_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/golden_hoe              ] weapon.offhand nexus:durability/golden_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/wooden_sword            ] weapon.offhand nexus:durability/wooden_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/wooden_pickaxe          ] weapon.offhand nexus:durability/wooden_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/wooden_shovel           ] weapon.offhand nexus:durability/wooden_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/wooden_axe              ] weapon.offhand nexus:durability/wooden_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/wooden_hoe              ] weapon.offhand nexus:durability/wooden_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/stone_sword             ] weapon.offhand nexus:durability/stone_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/stone_pickaxe           ] weapon.offhand nexus:durability/stone_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/stone_shovel            ] weapon.offhand nexus:durability/stone_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/stone_axe               ] weapon.offhand nexus:durability/stone_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/stone_hoe               ] weapon.offhand nexus:durability/stone_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/iron_sword              ] weapon.offhand nexus:durability/iron_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/iron_pickaxe            ] weapon.offhand nexus:durability/iron_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/iron_shovel             ] weapon.offhand nexus:durability/iron_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/iron_axe                ] weapon.offhand nexus:durability/iron_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/iron_hoe                ] weapon.offhand nexus:durability/iron_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/diamond_sword           ] weapon.offhand nexus:durability/diamond_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/diamond_pickaxe         ] weapon.offhand nexus:durability/diamond_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/diamond_shovel          ] weapon.offhand nexus:durability/diamond_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/diamond_axe             ] weapon.offhand nexus:durability/diamond_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/diamond_hoe             ] weapon.offhand nexus:durability/diamond_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/netherite_sword         ] weapon.offhand nexus:durability/netherite_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/netherite_pickaxe       ] weapon.offhand nexus:durability/netherite_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/netherite_shovel        ] weapon.offhand nexus:durability/netherite_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/netherite_axe           ] weapon.offhand nexus:durability/netherite_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/netherite_hoe           ] weapon.offhand nexus:durability/netherite_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/fishing_rod             ] weapon.offhand nexus:durability/fishing_rod
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/flint_and_steel         ] weapon.offhand nexus:durability/flint_and_steel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/carrot_on_a_stick       ] weapon.offhand nexus:durability/carrot_on_a_stick
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/shears                  ] weapon.offhand nexus:durability/shears
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/shield                  ] weapon.offhand nexus:durability/shield
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/bow                     ] weapon.offhand nexus:durability/bow
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/trident                 ] weapon.offhand nexus:durability/trident
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/crossbow                ] weapon.offhand nexus:durability/crossbow
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/offhand/warped_fungus_on_a_stick] weapon.offhand nexus:durability/warped_fungus_on_a_stick







# Destroy item

execute store result score #broken_boolean nexus.value if predicate nexus:equipment/offhand/broken
execute if score #broken_boolean nexus.value matches 1 run item replace entity @s weapon.offhand with air
execute if score #broken_boolean nexus.value matches 1 at @s run playsound minecraft:entity.item.break player @a







# Modify score

scoreboard players add #durability_modifier nexus.value 1
scoreboard players operation #durability_modifier nexus.value /= #2 nexus.value