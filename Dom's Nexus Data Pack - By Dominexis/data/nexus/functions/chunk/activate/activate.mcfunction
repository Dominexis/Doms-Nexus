# Add activation tag

tag @s add nexus.chunk.activated







# Run function if player is in range

execute if score #feature_chunk_range nexus.value matches ..000016 positioned ~-016 -128 ~-016 if entity @a[dx=0031,dy=511,dz=0031,limit=1] positioned ~016 0 ~016 run function nexus:chunk/activate/tick
execute if score #feature_chunk_range nexus.value matches 017..032 positioned ~-032 -128 ~-032 if entity @a[dx=0063,dy=511,dz=0063,limit=1] positioned ~032 0 ~032 run function nexus:chunk/activate/tick
execute if score #feature_chunk_range nexus.value matches 033..064 positioned ~-064 -128 ~-064 if entity @a[dx=0127,dy=511,dz=0127,limit=1] positioned ~064 0 ~064 run function nexus:chunk/activate/tick
execute if score #feature_chunk_range nexus.value matches 065..128 positioned ~-128 -128 ~-128 if entity @a[dx=0255,dy=511,dz=0255,limit=1] positioned ~128 0 ~128 run function nexus:chunk/activate/tick
execute if score #feature_chunk_range nexus.value matches 129..256 positioned ~-256 -128 ~-256 if entity @a[dx=0511,dy=511,dz=0511,limit=1] positioned ~256 0 ~256 run function nexus:chunk/activate/tick
execute if score #feature_chunk_range nexus.value matches 000257.. positioned ~-512 -128 ~-512 if entity @a[dx=1023,dy=511,dz=1023,limit=1] positioned ~512 0 ~512 run function nexus:chunk/activate/tick