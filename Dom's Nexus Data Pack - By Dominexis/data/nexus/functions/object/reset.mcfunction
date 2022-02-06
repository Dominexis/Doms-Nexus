# Reset scores

scoreboard players set #active_object_priority nexus.value 0
scoreboard players set #active_object_id nexus.value 0
scoreboard players set #active_object_initialized_boolean nexus.value 0
scoreboard players set #active_object_finished_boolean nexus.value 0
scoreboard players set #visible_object_count_maximum nexus.value 1







# Reset bossbar

bossbar set nexus:object_count name [{"text":"Objects Remaining: ","color":"gold","bold":true},{"text":"0","color":"dark_red","bold":true}]
bossbar set nexus:object_count max 1
bossbar set nexus:object_count value 0
bossbar set nexus:object_count players