# Set gamerule

execute if score #debug_death_messages nexus.value matches 1 run gamerule showDeathMessages false







# Kill player

effect give @s instant_damage 1 124 true







# Reset gamerule

schedule function nexus:player/health/modify/death/gamerule 2t replace