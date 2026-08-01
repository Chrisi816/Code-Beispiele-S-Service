-- client

-- Open a Stash Inventory
-- exports["S-Inventory"]:OpenStashInventory(uniqueid, stashid)
-- @uniqueid = A group for the stash
-- @stashid = A unique ID for the stash
exports["S-Inventory"]:OpenStashInventory("police", "evidence_1")


-- Return / Open the Player Inventory
-- exports["S-Inventory"]:ReturnToInventory()
exports["S-Inventory"]:ReturnToInventory()


-- Lock or Unlock the Inventory for the Local Player
-- exports["S-Inventory"]:LockInventory(locked)
-- @locked = true locks the inventory, false unlocks it
exports["S-Inventory"]:LockInventory(true)


-- Lock or Unlock Item Dropping
-- exports["S-Inventory"]:LockDropofItem(locked)
-- @locked = true locks item dropping, false unlocks it
exports["S-Inventory"]:LockDropofItem(true)


-- Open Another Player's Inventory
-- exports["S-Inventory"]:ReturnToPlayerInventory(playerId)
-- @playerId = The server ID of the player whose inventory should be opened
exports["S-Inventory"]:ReturnToPlayerInventory(1)


-- Open a Vehicle Trunk or Glovebox
-- exports["S-Inventory"]:ReturnToTrunk(vehicle, glovebox)
-- @vehicle = The vehicle entity
-- @glovebox = true opens the glovebox, false opens the trunk
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
exports["S-Inventory"]:ReturnToTrunk(vehicle, false)

-- Search the Nearest Player
-- TriggerEvent("SService:Server:SearchPlayer")
TriggerEvent("SService:Server:SearchPlayer")


-- Search a Player by Server ID
-- TriggerServerEvent("SService:Server:SearchPlayer", targetsrc)
-- @targetsrc = The server ID of the player
TriggerServerEvent("SService:Server:SearchPlayer", 1)


-- Insert Items into a Stash through the Server
-- TriggerServerEvent("SService:Server:InsertItemsIntoStash", targetsrc, data, uniqueid, stashinv)
-- @targetsrc = The server ID of the target player
-- @data = A table containing the item data
-- @uniqueid = The unique ID of the stash
-- @stashinv = The stash inventory
local data = {
    name = "bread",
    anzahl = 1
}

TriggerServerEvent(
    "SService:Server:InsertItemsIntoStash",
    1,
    data,
    "police",
    "evidence_1"
)

-- server 

-- Register a Stash
-- exports["S-Inventory"]:RegisterStash(stashid, name, maxweight, uniqueid)
-- @stashid = The group ID for the stash
-- @name = The displayed stash name
-- @maxweight = The maximum allowed weight
-- @uniqueid = A unique ID for the stash
exports["S-Inventory"]:RegisterStash("police", "Police Evidence", 50000, "evidence_1")


-- Open a Stash Inventory for a Player
-- exports["S-Inventory"]:OpenStashInventory(targetsrc, uniqueid, stashid)
-- @targetsrc = The server ID of the player
-- @uniqueid = The unique ID of a registered stash
-- @stashid = The group ID of the stash
exports["S-Inventory"]:OpenStashInventory(1, "evidence_1", "police")


-- Delete a Stash
-- exports["S-Inventory"]:DeleteStash(stashid)
-- @stashid = The ID of the stash that should be deleted
exports["S-Inventory"]:DeleteStash("police")


-- Check Whether a Stash Has Space for an Item
-- exports["S-Inventory"]:CheckIfStashFree(uniqueid, stashid, itemadd, amountadd)
-- @uniqueid = The unique ID of the stash
-- @stashid = The group ID of the stash
-- @itemadd = The item that should be added
-- @amountadd = The item amount
local hasSpace = exports["S-Inventory"]:CheckIfStashFree(
    "evidence_1",
    "police",
    "bread",
    1
)


-- Delete an Item from a Stash
-- exports["S-Inventory"]:DeleteItem(uniqueid, stashid, itemname)
-- @uniqueid = The unique ID of the stash
-- @stashid = The group ID of the stash
-- @itemname = The item that should be deleted
exports["S-Inventory"]:DeleteItem("evidence_1", "police", "bread")


-- Add an Item into a Stash
-- exports["S-Inventory"]:InsertNewItemInStash(uniqueid, typeofdata, itemname, itemcount, itemlabel)
-- @uniqueid = The unique ID of the stash
-- @typeofdata = The item data type
-- @itemname = The internal item name
-- @itemcount = The amount that should be added
-- @itemlabel = The displayed item label
exports["S-Inventory"]:InsertNewItemInStash(
    "evidence_1",
    "item",
    "bread",
    1,
    "Bread"
)


-- Check Whether an Item Exists in a Stash
-- exports["S-Inventory"]:CheckIfItemExists(uniqueid, stashid, itemname)
-- @uniqueid = The unique ID of the stash
-- @stashid = The group ID of the stash
-- @itemname = The item that should be checked
local itemExists = exports["S-Inventory"]:CheckIfItemExists(
    "evidence_1",
    "police",
    "bread"
)


-- Get Data from a Stash
-- exports["S-Inventory"]:GetDataFromStash(uniqueid, stashid)
-- @uniqueid = The unique ID of the stash
-- @stashid = The group ID of the stash
local stashData = exports["S-Inventory"]:GetDataFromStash(
    "evidence_1",
    "police"
)


-- Remove All Items from a Stash
-- exports["S-Inventory"]:DeleteAllItems(uniqueid, stashid)
-- @uniqueid = The unique ID of the stash
-- @stashid = The group ID of the stash
exports["S-Inventory"]:DeleteAllItems("evidence_1", "police")


-- Get Item Data from a Stash
-- exports["S-Inventory"]:GetDataFromStashItems(uniqueid, stashid)
-- @uniqueid = The unique ID of the stash
-- @stashid = The group ID of the stash
local stashItems = exports["S-Inventory"]:GetDataFromStashItems(
    "evidence_1",
    "police"
)


-- Get the Weight of an Item Table
-- exports["S-Inventory"]:GetWeight(items)
-- @items = A table containing items
local items = {
    {
        name = "bread",
        count = 1
    }
}

local totalWeight = exports["S-Inventory"]:GetWeight(items)


-- Get the Items of a Player
-- exports["S-Inventory"]:GetItems(targetsrc)
-- @targetsrc = The server ID of the player
local playerItems = exports["S-Inventory"]:GetItems(1)


-- Transfer / Give an Item to Another Player
-- exports["S-Inventory"]:TransferItem(xPlayer, xNewPlayer, item, amount)
-- @xPlayer = The source framework player object
-- @xNewPlayer = The target framework player object
-- @item = The internal item name
-- @amount = The amount that should be transferred
exports["S-Inventory"]:TransferItem(xPlayer, xNewPlayer, "bread", 1)


-- Use an Item
-- exports["S-Inventory"]:UseItem(targetsrc, item, amount)
-- @targetsrc = The server ID of the player
-- @item = The internal item name
-- @amount = The amount that should be used
exports["S-Inventory"]:UseItem(1, "bread", 1)


-- Check Whether a Player Has Enough Items
-- exports["S-Inventory"]:CheckIfPlayerHasEnoughItems(targetsrc, item, amount)
-- @targetsrc = The server ID of the player
-- @item = The internal item name
-- @amount = The required amount
local hasEnoughItems = exports["S-Inventory"]:CheckIfPlayerHasEnoughItems(
    1,
    "bread",
    1
)


-- Get the Weight of an Item
-- exports["S-Inventory"]:GetWeightOfItem(itemname, amount)
-- @itemname = The internal item name
-- @amount = The item amount
local itemWeight = exports["S-Inventory"]:GetWeightOfItem("bread", 1)


-- Make a Client Search for the Nearest Player
-- TriggerClientEvent("SService:Server:SearchPlayer", targetsrc)
-- @targetsrc = The server ID of the player who should perform the search
TriggerClientEvent("SService:Server:SearchPlayer", 1)


-- Search a Player by Server ID on the Server
-- TriggerEvent("SService:Server:SearchPlayer", targetsrc)
-- @targetsrc = The server ID of the player
TriggerEvent("SService:Server:SearchPlayer", 1)


-- Insert Items into a Stash on the Server
-- TriggerEvent("SService:Server:InsertItemsIntoStash", data, uniqueid, stashinv)
-- @data = A table containing the item data
-- @uniqueid = The unique ID of the stash
-- @stashinv = The stash inventory
local data = {
    name = "bread",
    anzahl = 1
}

TriggerEvent(
    "SService:Server:InsertItemsIntoStash",
    data,
    "police",
    "evidence_1"
)