# Update absorption amount if damage was taken

scoreboard players operation #previous nexus.health = @s nexus.health
function nexus:entity/generic/data/extract/objective
execute if entity @s[tag=nexus.player.damage] run scoreboard players operation @s nexus.health -= @s nexus.hp_shift

scoreboard players operation #math_00 nexus.value = @s nexus.health
scoreboard players operation #math_00 nexus.value -= #previous nexus.health
scoreboard players operation #math_00 nexus.value += #health_offset nexus.value

execute if score #math_00 nexus.value matches ..-1 run scoreboard players operation #absorption_amount nexus.value += #math_00 nexus.value
execute if score #absorption_amount nexus.value matches ..-1 run scoreboard players set #absorption_amount nexus.value 0







# Manage timer

scoreboard players remove @s nexus.abs_timer 1
scoreboard players set @s[scores={nexus.milk=1..}] nexus.abs_timer 0
scoreboard players set @s[scores={nexus.death=1..}] nexus.abs_timer 0
execute if score @s nexus.abs_timer matches ..0 run function nexus:player/health/absorption/remove

execute unless score @s nexus.abs_amount = #absorption_amount nexus.value run function nexus:player/health/absorption/max_health