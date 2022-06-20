# Teleport away

execute at @s run teleport @s ~ -1000 ~







# Remove resistance and regeneration effects

effect clear @s resistance
effect clear @s regeneration







# Reset scores

scoreboard players reset @s







# Terminate

data merge entity @s {Health:0.01f,Invulnerable:0b,Size:0,Tags:["nexus.entity.terminate"]}







# Set termination boolean

scoreboard players set #entity_termination_boolean nexus.value 1