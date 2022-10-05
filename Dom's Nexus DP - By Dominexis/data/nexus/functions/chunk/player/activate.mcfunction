# Add activation tag

tag @s add nexus.chunk.activated







# Spawn chunk

execute positioned ~ 0 ~ if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all unless entity @e[type=marker,distance=..32,tag=nexus.chunk] run summon marker ~ ~ ~ {Tags:["nexus.chunk"]}







# Activate chunks

execute if score #feature_chunk_ticking nexus.value matches 0 run function nexus:chunk/player/tick