# Set last modified value

scoreboard players set #last_modified nexus.value 2022061901
execute unless score #function_tree_library_last_modified nexus.value = #last_modified nexus.value run scoreboard players set #update_installation_boolean nexus.value 1
scoreboard players operation #function_tree_library_last_modified nexus.value = #last_modified nexus.value