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
execute if data storage nexus:data database.tag.Inventory[{    Slot:   9b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:   9b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:   9b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.0 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  10b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  10b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  10b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.1 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  11b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  11b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  11b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.2 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  12b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  12b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  12b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.3 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  13b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  13b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  13b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.4 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  14b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  14b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  14b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.5 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  15b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  15b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  15b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.6 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  16b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  16b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  16b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.7 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  17b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  17b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  17b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.8 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  18b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  18b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  18b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.9 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  19b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  19b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  19b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.10 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  20b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  20b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  20b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.11 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  21b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  21b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  21b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.12 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  22b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  22b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  22b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.13 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  23b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  23b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  23b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.14 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  24b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  24b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  24b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.15 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  25b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  25b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  25b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.16 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  26b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  26b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  26b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.17 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  27b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  27b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  27b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.18 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  28b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  28b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  28b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.19 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  29b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  29b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  29b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.20 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  30b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  30b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  30b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.21 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  31b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  31b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  31b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.22 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  32b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  32b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  32b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.23 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  33b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  33b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  33b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.24 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  34b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  34b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  34b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.25 from entity @s armor.head
execute if data storage nexus:data database.tag.Inventory[{    Slot:  35b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:  35b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:  35b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] inventory.26 from entity @s armor.head
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
execute if data storage nexus:data database.tag.Inventory[{    Slot:-106b}] run data modify entity @s ArmorItems[3] set from storage nexus:data database.tag.Inventory[{Slot:-106b}]
execute unless data storage nexus:data database.tag.Inventory[{Slot:-106b}] run item replace entity @s armor.head with air
item replace entity @a[tag=nexus.player.target.inventory,limit=1] weapon.offhand from entity @s armor.head







# Terminate

kill @s