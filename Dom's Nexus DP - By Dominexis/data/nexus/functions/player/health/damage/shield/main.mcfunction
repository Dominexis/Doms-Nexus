# Set attack boolean

scoreboard players set #damage_attack_boolean nexus.value 1







# Block the damage with a shield

scoreboard players set #damage_blocked nexus.value 0

# These vectors are simulating a dot product calculation

execute if score #damage_shield_boolean nexus.value matches 1 if score @s nexus.use_shield matches 5 facing entity @s eyes positioned as @s positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..1.41421356237] run scoreboard players set #damage_blocked nexus.value 1

execute if score #damage_blocked nexus.value matches 1 at @s run playsound minecraft:item.shield.block player @a
execute if score #damage_blocked nexus.value matches 1 at @s run function nexus:player/health/damage/shield/durability
execute if score #damage_blocked nexus.value matches 1 run scoreboard players set #damage_shield_blocked_boolean nexus.value 1







# Apply damage as usual

execute if score #damage_blocked nexus.value matches 0 at @s run function nexus:player/health/damage/main