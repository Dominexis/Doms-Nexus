# Extract data

function nexus:entity/generic/data/extract/fakeplayer/pos







# Assign motion ticks value

scoreboard players operation @s nexus.mot_ticks = #global nexus.ticks
scoreboard players add @s nexus.mot_ticks 1







# Add tag

tag @s add nexus.player.target