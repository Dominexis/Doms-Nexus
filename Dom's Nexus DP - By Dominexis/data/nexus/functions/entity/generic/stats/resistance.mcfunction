# Compute resistance value

scoreboard players set @s nexus.resistance 0

execute if predicate nexus:stats/resistance/1 run scoreboard players add @s nexus.resistance 1
execute if predicate nexus:stats/resistance/2 run scoreboard players add @s nexus.resistance 2
execute if predicate nexus:stats/resistance/4 run scoreboard players add @s nexus.resistance 4

scoreboard players set @s[scores={nexus.resistance=6..}] nexus.resistance 5