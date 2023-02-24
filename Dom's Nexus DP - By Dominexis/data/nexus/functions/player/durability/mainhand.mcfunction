# Modify score

scoreboard players operation #durability_modifier nexus.value *= #2 nexus.value
scoreboard players remove #durability_modifier nexus.value 1







# Get unbreaking level

scoreboard players set #unbreaking_damage_dodge nexus.value 0

scoreboard players set #unbreaking_level nexus.value 0
execute store result score #unbreaking_boolean nexus.value if predicate nexus:equipment/mainhand/unbreaking
execute if score #unbreaking_boolean nexus.value matches 1 store result score #unbreaking_level nexus.value run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score #unbreaking_boolean nexus.value matches 1 run function nexus:player/durability/unbreaking/tool







# Modify item

execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/golden_sword            ] weapon.mainhand nexus:durability/golden_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/golden_pickaxe          ] weapon.mainhand nexus:durability/golden_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/golden_shovel           ] weapon.mainhand nexus:durability/golden_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/golden_axe              ] weapon.mainhand nexus:durability/golden_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/golden_hoe              ] weapon.mainhand nexus:durability/golden_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/wooden_sword            ] weapon.mainhand nexus:durability/wooden_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/wooden_pickaxe          ] weapon.mainhand nexus:durability/wooden_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/wooden_shovel           ] weapon.mainhand nexus:durability/wooden_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/wooden_axe              ] weapon.mainhand nexus:durability/wooden_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/wooden_hoe              ] weapon.mainhand nexus:durability/wooden_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/stone_sword             ] weapon.mainhand nexus:durability/stone_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/stone_pickaxe           ] weapon.mainhand nexus:durability/stone_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/stone_shovel            ] weapon.mainhand nexus:durability/stone_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/stone_axe               ] weapon.mainhand nexus:durability/stone_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/stone_hoe               ] weapon.mainhand nexus:durability/stone_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/iron_sword              ] weapon.mainhand nexus:durability/iron_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/iron_pickaxe            ] weapon.mainhand nexus:durability/iron_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/iron_shovel             ] weapon.mainhand nexus:durability/iron_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/iron_axe                ] weapon.mainhand nexus:durability/iron_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/iron_hoe                ] weapon.mainhand nexus:durability/iron_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/diamond_sword           ] weapon.mainhand nexus:durability/diamond_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/diamond_pickaxe         ] weapon.mainhand nexus:durability/diamond_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/diamond_shovel          ] weapon.mainhand nexus:durability/diamond_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/diamond_axe             ] weapon.mainhand nexus:durability/diamond_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/diamond_hoe             ] weapon.mainhand nexus:durability/diamond_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/netherite_sword         ] weapon.mainhand nexus:durability/netherite_sword
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/netherite_pickaxe       ] weapon.mainhand nexus:durability/netherite_pickaxe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/netherite_shovel        ] weapon.mainhand nexus:durability/netherite_shovel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/netherite_axe           ] weapon.mainhand nexus:durability/netherite_axe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/netherite_hoe           ] weapon.mainhand nexus:durability/netherite_hoe
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/fishing_rod             ] weapon.mainhand nexus:durability/fishing_rod
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/flint_and_steel         ] weapon.mainhand nexus:durability/flint_and_steel
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/carrot_on_a_stick       ] weapon.mainhand nexus:durability/carrot_on_a_stick
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/shears                  ] weapon.mainhand nexus:durability/shears
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/shield                  ] weapon.mainhand nexus:durability/shield
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/bow                     ] weapon.mainhand nexus:durability/bow
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/trident                 ] weapon.mainhand nexus:durability/trident
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/crossbow                ] weapon.mainhand nexus:durability/crossbow
execute if score #unbreaking_damage_dodge nexus.value matches 0 run item modify entity @s[predicate=nexus:equipment/mainhand/warped_fungus_on_a_stick] weapon.mainhand nexus:durability/warped_fungus_on_a_stick







# Destroy item

execute store result score #broken_boolean nexus.value if predicate nexus:equipment/mainhand/broken
execute if score #broken_boolean nexus.value matches 1 run item replace entity @s weapon.mainhand with air
execute if score #broken_boolean nexus.value matches 1 at @s run playsound minecraft:entity.item.break player @a







# Modify score

scoreboard players add #durability_modifier nexus.value 1
scoreboard players operation #durability_modifier nexus.value /= #2 nexus.value