-- How to make a stash
-- 1. Register a stash in a server file

local randomuniqueid = math.random(1, 10000)
exports["S-Inventory"]:RegisterStash("Storage", "Storage", 5000, "home-" .. randomuniqueid)

-- The stash is created, means you can open it with this code:
-- 2. How to Open a stash
exports["S-Inventory"]:OpenStashInventory("home-" .. randomuniqueid, "Storage")

-- For parameter info: https://s-service.gitbook.io/s-service-documentations/docs-for-our-products/s-inventory/exports-and-events

-- To delete all items from a Stash
exports["S-Inventory"]:DeleteAllItems("home-" .. randomuniqueid, "Storage")
