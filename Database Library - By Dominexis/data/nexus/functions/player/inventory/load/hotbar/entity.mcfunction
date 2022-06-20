# Get data from database

function nexus:generic/database/target
function nexus:generic/database/get







# Push items from slots

execute if data storage nexus:data database.tag.Inventory[{    Slot:   0b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   0b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   0b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.0 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   1b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   1b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   1b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.1 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   2b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   2b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   2b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.2 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   3b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   3b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   3b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.3 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   4b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   4b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   4b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.4 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   5b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   5b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   5b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.5 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   6b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   6b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   6b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.6 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   7b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   7b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   7b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.7 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:   8b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   8b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   8b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] hotbar.8 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:-106b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:-106b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:-106b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] weapon.offhand from entity @s armor.head







# Terminate

kill @s