# Modify goal health if damaged

scoreboard players set #health_buffer nexus.value 6000

function nexus:entity/generic/stats/resistance
scoreboard players operation #resistance nexus.value = @s nexus.resistance
scoreboard players operation #resistance nexus.value *= #-1 nexus.value
scoreboard players add #resistance nexus.value 5
scoreboard players operation #health_buffer nexus.value *= #resistance nexus.value
scoreboard players operation #health_buffer nexus.value /= #5 nexus.value

function nexus:entity/generic/stats/protection
scoreboard players operation #protection nexus.value = @s nexus.protection
scoreboard players operation #protection nexus.value *= #-1 nexus.value
scoreboard players add #protection nexus.value 25
scoreboard players operation #health_buffer nexus.value *= #protection nexus.value
scoreboard players operation #health_buffer nexus.value /= #25 nexus.value

scoreboard players operation #goal_health nexus.value += #health_buffer nexus.value