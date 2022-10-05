# Update world border and value if not done already

execute if score #doms_nexus_verification_boolean nexus.value matches 1 if score #world_tick_time_advancement_boolean nexus.value matches 0 run function nexus:generic/tick_time/world_tick/main







# Revoke advancement

advancement revoke @s only nexus:generic/tick