# Add tag

tag @s add nexus.entity.activated







# Calculate missed ticks

execute unless score @s nexus.ticks = @s nexus.ticks run scoreboard players set @s nexus.ticks -1
execute if score @s nexus.ticks matches -1 run scoreboard players operation @s nexus.ticks += #global nexus.ticks

scoreboard players operation #missed_ticks nexus.value = #global nexus.ticks
scoreboard players operation #missed_ticks nexus.value -= @s nexus.ticks
execute if score #missed_ticks nexus.value matches 5.. run scoreboard players set #missed_ticks nexus.value 5
execute if score #missed_ticks nexus.value matches ..0 run scoreboard players set #missed_ticks nexus.value 1
scoreboard players operation @s nexus.ticks = #global nexus.ticks








# Tick entity

scoreboard players set #boolean nexus.value 0

execute unless score @s nexus.tick_dist matches 0..128 run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.tick_dist matches 001..008 if entity @a[distance=..008,gamemode=!spectator] run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.tick_dist matches 009..016 if entity @a[distance=..016,gamemode=!spectator] run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.tick_dist matches 017..032 if entity @a[distance=..032,gamemode=!spectator] run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.tick_dist matches 031..064 if entity @a[distance=..064,gamemode=!spectator] run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.tick_dist matches 065..128 if entity @a[distance=..128,gamemode=!spectator] run scoreboard players set #boolean nexus.value 1
execute if score @s nexus.tick_bool matches 1 run scoreboard players set #boolean nexus.value 1

execute if score #boolean nexus.value matches 1 run function nexus:entity/activate/tick/main