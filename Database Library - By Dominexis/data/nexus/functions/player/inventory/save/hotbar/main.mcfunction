# Get data from database

function nexus:generic/database/target
function nexus:generic/database/get







# Remove relevant slots

data remove storage nexus:data database.tag.Inventory[{Slot:   0b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   1b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   2b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   3b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   4b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   5b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   6b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   7b}]
data remove storage nexus:data database.tag.Inventory[{Slot:   8b}]
data remove storage nexus:data database.tag.Inventory[{Slot:-106b}]







# Append to tag from inventory

data modify storage nexus:data tag.Inventory set from entity @s Inventory

data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   0b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   1b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   2b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   3b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   4b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   5b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   6b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   7b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:   8b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot:-106b}]







# Push data to database

function nexus:generic/database/set