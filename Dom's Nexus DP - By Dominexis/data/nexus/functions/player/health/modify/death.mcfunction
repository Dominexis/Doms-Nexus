# Set gamerule

execute if score #debug_death_messages nexus.value matches 1 run gamerule showDeathMessages false







# Kill player

effect give @s instant_damage 1 124 true







# Reset gamerule

scoreboard players set #death_messages_timer nexus.value 4