# Get data from database

function nexus:generic/database/target
function nexus:generic/database/get







# Push items from slots

execute if data storage nexus:data database.tag.Inventory[{    Slot: 100b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot: 100b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot: 100b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] armor.feet from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot: 101b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot: 101b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot: 101b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] armor.legs from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot: 102b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot: 102b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot: 102b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] armor.chest from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot: 103b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot: 103b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot: 103b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] armor.head from entity @s armor.head







# Terminate

kill @s