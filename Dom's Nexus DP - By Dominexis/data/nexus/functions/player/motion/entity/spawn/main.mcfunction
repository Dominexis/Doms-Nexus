# Extract data

function nexus:entity/generic/data/extract/fakeplayer/pos







# Spawn motion entity

summon marker ~ ~ ~ {Tags:["nexus.entity","nexus.entity.type.motion","nexus.entity.target.spawn","nexus.entity.push"]}







# Assign scores

execute as @e[type=marker,distance=..16,tag=nexus.entity.type.motion,tag=nexus.entity.target.spawn,limit=1] run function nexus:player/motion/entity/spawn/scores







# Add tag

tag @s add nexus.player.motion







# Synchronize ID

scoreboard players operation @s nexus.mot_ticks = #global nexus.ticks
scoreboard players add @s nexus.mot_ticks 1