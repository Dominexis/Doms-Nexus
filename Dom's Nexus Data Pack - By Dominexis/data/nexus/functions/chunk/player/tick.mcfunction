# Activate chunks

execute if score #feature_chunk_range nexus.value matches ..000016 positioned ~-016 -1 ~-016 run function nexus:chunk/player/range/016
execute if score #feature_chunk_range nexus.value matches 017..032 positioned ~-032 -1 ~-032 run function nexus:chunk/player/range/032
execute if score #feature_chunk_range nexus.value matches 033..064 positioned ~-064 -1 ~-064 run function nexus:chunk/player/range/064
execute if score #feature_chunk_range nexus.value matches 065..128 positioned ~-128 -1 ~-128 run function nexus:chunk/player/range/128
execute if score #feature_chunk_range nexus.value matches 129..256 positioned ~-256 -1 ~-256 run function nexus:chunk/player/range/256
execute if score #feature_chunk_range nexus.value matches 000257.. positioned ~-512 -1 ~-512 run function nexus:chunk/player/range/512