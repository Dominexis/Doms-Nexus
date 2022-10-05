# Set boolean

scoreboard players set #chunk_tick_boolean nexus.value 1







# Add activation tag

tag @s add nexus.chunk.activated







# Process chunk

execute unless score @s nexus.modified = #global nexus.modified run function nexus:chunk/activate/process







# Spawn neighboring chunk markers

execute if score @s nexus.modified = #global nexus.modified at @s[tag=!nexus.chunk.neighbor] run function nexus:chunk/neighbor/main







# Compute missed ticks

execute unless score @s nexus.ticks = @s nexus.ticks run scoreboard players set @s nexus.ticks -1
execute if score @s nexus.ticks matches -1 run scoreboard players operation @s nexus.ticks += #global nexus.ticks

scoreboard players operation #missed_ticks nexus.value = #global nexus.ticks
scoreboard players operation #missed_ticks nexus.value -= @s nexus.ticks
execute if score #missed_ticks nexus.value matches ..0 run scoreboard players set #missed_ticks nexus.value 1
scoreboard players operation @s nexus.ticks = #global nexus.ticks







# Run ticking function

execute if score @s nexus.modified = #global nexus.modified at @s run function #nexus:chunk/main