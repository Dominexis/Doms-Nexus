# Get current health

execute store result score #health nexus.value run data get entity @s Health 1000







# Extract values from cause variable

scoreboard players operation #heal nexus.value = @s nexus.heal
scoreboard players operation #heal nexus.value %= #100 nexus.value
scoreboard players operation #heal nexus.value *= #1000 nexus.value







# Apply health

execute store result score #max_health nexus.value run attribute @s generic.max_health get 1000
scoreboard players operation #health nexus.value += #heal nexus.value
scoreboard players operation #health nexus.value < #max_health nexus.value
scoreboard players operation @s nexus.health = #health nexus.value

execute store result entity @s Health float 0.001 run scoreboard players get #health nexus.value







# Set delay timer

scoreboard players set @s nexus.hp_time 10







# Reset values

scoreboard players set @s nexus.heal 0