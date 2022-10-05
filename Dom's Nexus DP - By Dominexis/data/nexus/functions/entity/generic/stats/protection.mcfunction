# Compute protection value

scoreboard players set @s nexus.protection 0

execute if predicate nexus:stats/protection/feet/1 run scoreboard players add @s nexus.protection 1
execute if predicate nexus:stats/protection/feet/2 run scoreboard players add @s nexus.protection 2
execute if predicate nexus:stats/protection/feet/4 run scoreboard players add @s nexus.protection 4
execute if predicate nexus:stats/protection/feet/8 run scoreboard players add @s nexus.protection 8
execute if predicate nexus:stats/protection/feet/16 run scoreboard players add @s nexus.protection 16

execute if predicate nexus:stats/protection/legs/1 run scoreboard players add @s nexus.protection 1
execute if predicate nexus:stats/protection/legs/2 run scoreboard players add @s nexus.protection 2
execute if predicate nexus:stats/protection/legs/4 run scoreboard players add @s nexus.protection 4
execute if predicate nexus:stats/protection/legs/8 run scoreboard players add @s nexus.protection 8
execute if predicate nexus:stats/protection/legs/16 run scoreboard players add @s nexus.protection 16

execute if predicate nexus:stats/protection/chest/1 run scoreboard players add @s nexus.protection 1
execute if predicate nexus:stats/protection/chest/2 run scoreboard players add @s nexus.protection 2
execute if predicate nexus:stats/protection/chest/4 run scoreboard players add @s nexus.protection 4
execute if predicate nexus:stats/protection/chest/8 run scoreboard players add @s nexus.protection 8
execute if predicate nexus:stats/protection/chest/16 run scoreboard players add @s nexus.protection 16

execute if predicate nexus:stats/protection/head/1 run scoreboard players add @s nexus.protection 1
execute if predicate nexus:stats/protection/head/2 run scoreboard players add @s nexus.protection 2
execute if predicate nexus:stats/protection/head/4 run scoreboard players add @s nexus.protection 4
execute if predicate nexus:stats/protection/head/8 run scoreboard players add @s nexus.protection 8
execute if predicate nexus:stats/protection/head/16 run scoreboard players add @s nexus.protection 16

scoreboard players set @s[scores={nexus.protection=21..}] nexus.protection 20