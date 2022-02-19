# Get data from database

function nexus:generic/database/target
function nexus:generic/database/get







# Push items from slots

execute if data storage nexus:data database.tag.SelectedItem run data modify entity @s Item set from storage nexus:data database.tag.SelectedItem
execute unless data storage nexus:data database.tag.SelectedItem run item replace entity @s hotbar.0 with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] weapon.mainhand from entity @s hotbar.0







# Terminate

kill @s