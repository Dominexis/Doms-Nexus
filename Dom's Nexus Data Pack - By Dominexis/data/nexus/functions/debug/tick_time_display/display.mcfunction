# Compute total time

scoreboard players operation #total_tick_time nexus.value = #player_tick_time nexus.value
scoreboard players operation #total_tick_time nexus.value += #entity_tick_time nexus.value
scoreboard players operation #total_tick_time nexus.value += #object_tick_time nexus.value
scoreboard players operation #total_tick_time nexus.value += #chunk_tick_time nexus.value
scoreboard players operation #total_tick_time nexus.value += #generic_tick_time nexus.value
scoreboard players operation #total_tick_time nexus.value += #external_tick_time nexus.value
scoreboard players operation #total_tick_time nexus.value += #world_tick_time nexus.value







# Put parameters into storage

execute if score #player_tick_time nexus.value matches ..49 run data modify storage nexus:data tag.debug.player_tick_time set value '[{"text":"Player: ","color":"gray"},{"score":{"name":"#player_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #player_tick_time nexus.value matches 50.. run data modify storage nexus:data tag.debug.player_tick_time set value '[{"text":"Player: ","color":"gray"},{"score":{"name":"#player_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
execute if score #terminate_entity_tick nexus.value matches 0 run data modify storage nexus:data tag.debug.entity_tick_time set value '[{"text":", Entity: ","color":"gray"},{"score":{"name":"#entity_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #terminate_entity_tick nexus.value matches 1 run data modify storage nexus:data tag.debug.entity_tick_time set value '[{"text":", Entity: ","color":"gray"},{"score":{"name":"#entity_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
execute if score #terminate_object_tick nexus.value matches 0 run data modify storage nexus:data tag.debug.object_tick_time set value '[{"text":", Object: ","color":"gray"},{"score":{"name":"#object_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #terminate_object_tick nexus.value matches 1 run data modify storage nexus:data tag.debug.object_tick_time set value '[{"text":", Object: ","color":"gray"},{"score":{"name":"#object_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
execute if score #terminate_chunk_tick nexus.value matches 0 run data modify storage nexus:data tag.debug.chunk_tick_time set value '[{"text":", Chunk: ","color":"gray"},{"score":{"name":"#chunk_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #terminate_chunk_tick nexus.value matches 1 run data modify storage nexus:data tag.debug.chunk_tick_time set value '[{"text":", Chunk: ","color":"gray"},{"score":{"name":"#chunk_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
execute if score #generic_tick_time nexus.value matches ..49 run data modify storage nexus:data tag.debug.generic_tick_time set value '[{"text":", Generic: ","color":"gray"},{"score":{"name":"#generic_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #generic_tick_time nexus.value matches 50.. run data modify storage nexus:data tag.debug.generic_tick_time set value '[{"text":", Generic: ","color":"gray"},{"score":{"name":"#generic_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
execute if score #external_tick_time nexus.value matches ..49 run data modify storage nexus:data tag.debug.external_tick_time set value '[{"text":", External: ","color":"gray"},{"score":{"name":"#external_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #external_tick_time nexus.value matches 50.. run data modify storage nexus:data tag.debug.external_tick_time set value '[{"text":", External: ","color":"gray"},{"score":{"name":"#external_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
execute if score #world_tick_time nexus.value matches ..49 run data modify storage nexus:data tag.debug.world_tick_time set value '[{"text":", World: ","color":"gray"},{"score":{"name":"#world_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #world_tick_time nexus.value matches 50.. run data modify storage nexus:data tag.debug.world_tick_time set value '[{"text":", World: ","color":"gray"},{"score":{"name":"#world_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
execute if score #total_tick_time nexus.value matches ..49 run data modify storage nexus:data tag.debug.total_tick_time set value '[{"text":", Total Time: ","color":"gray"},{"score":{"name":"#total_tick_time","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'
execute if score #total_tick_time nexus.value matches 50.. run data modify storage nexus:data tag.debug.total_tick_time set value '[{"text":", Total Time: ","color":"gray"},{"score":{"name":"#total_tick_time","objective":"nexus.value"},"color":"red"  },{"text":" ms","color":"red"  }]'
data modify storage nexus:data tag.debug.time_between_ticks set value '[{"text":", Between Ticks: ","color":"gray"},{"score":{"name":"#time_between_ticks","objective":"nexus.value"},"color":"white"},{"text":" ms","color":"white"}]'

execute if score #feature_object_ticking nexus.value matches 0 run data modify storage nexus:data tag.debug.object_tick_time set value '{"text":""}'
execute if score #feature_chunk_processing nexus.value matches 0 run data modify storage nexus:data tag.debug.chunk_tick_time set value '{"text":""}'
execute if score #feature_external_time_measurement nexus.value matches 0 run data modify storage nexus:data tag.debug.external_tick_time set value '{"text":""}'







# Display time

title @a[tag=nexus.player.operator] actionbar ["",{"nbt":"tag.debug.player_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.entity_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.object_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.chunk_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.generic_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.external_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.world_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.total_tick_time","storage":"nexus:data","interpret":true},{"nbt":"tag.debug.time_between_ticks","storage":"nexus:data","interpret":true}]