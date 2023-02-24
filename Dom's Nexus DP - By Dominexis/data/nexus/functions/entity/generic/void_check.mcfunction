# Set void boolean

scoreboard players set #void_boolean nexus.value 0
execute at @s positioned ~ 0 ~ if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run scoreboard players set #void_boolean nexus.value 1
execute at @s positioned ~ ~32 ~ if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run scoreboard players set #void_boolean nexus.value 0
execute unless predicate nexus:generic/below_0 run scoreboard players set #void_boolean nexus.value 0