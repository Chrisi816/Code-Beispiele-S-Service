-- Client

-- Info Notify
-- exports["S-Notify"]:MakeInfoNotify(message, title, type, length, oocname, design, leftright)
-- @message = The message that should be displayed
-- @title = The title that should be displayed
-- @type = "info", "success", "error" or "ooc"
-- @length = The display duration
-- @oocname = The name displayed for an OOC notification
-- @design = 1 = Normal, 2 = Circle, 3 = Modern
-- @leftright = The notification position
exports["S-Notify"]:MakeInfoNotify("Hey, that's the best Notify Script", "S-Service", "info", 5, nil, 1, 1)


-- Announce Notify
-- exports["S-Notify"]:MakeAnnounceNotify(message, type, name, length, design, leftright)
-- @message = The announcement message
-- @type = "server", "event", "police", "medic" or "faction"
-- @name = The name that should be displayed
-- @length = The display duration
-- @design = 1 = Normal, 2 = Circle, 3 = Modern
-- @leftright = The notification position
exports["S-Notify"]:MakeAnnounceNotify("The server restarts in 10 minutes", "server", "S-Service", 5, 1, 1)


-- Team Notify
-- exports["S-Notify"]:MakeTeamNotify(message, length, oocname, design, leftright)
-- @message = The team notification message
-- @length = The display duration
-- @oocname = The name that should be displayed
-- @design = 1 = Normal, 2 = Circle, 3 = Modern
-- @leftright = The notification position
exports["S-Notify"]:MakeTeamNotify("Hey, this is a test Team Notify", 5, "Christian", 1, 1)


-- Interaction / Key Help Notify
-- exports["S-Notify"]:MakeKeyHelpNotify(key, text, design)
-- @key = The interaction key, for example "E"
-- @text = The interaction message
-- @design = 1 = Normal, 2 = Circle, 3 = Modern
exports["S-Notify"]:MakeKeyHelpNotify("E", "Press E to interact", 1)

-- Info Notify Event
-- TriggerEvent("SService:Client:InfoNotify", message, title, type, length, oocname, design, leftright)
TriggerEvent("SService:Client:InfoNotify", "Hey, this is a test Notify", "S-Service", "info", 5, nil, 1, 1)


-- Announce Notify Event
-- TriggerEvent("SService:Client:AnnounceNotify", message, type, name, length, design, leftright)
TriggerEvent("SService:Client:AnnounceNotify", "The server restarts in 10 minutes", "server", "S-Service", 5, 1, 1)


-- Team Notify Event
-- TriggerEvent("SService:Client:TeamNotifyScript", message, length, oocname, design, leftright)
TriggerEvent("SService:Client:TeamNotifyScript", "Hey, this is a test Team Notify", 5, "Christian", 1, 1)


-- Interaction / Key Help Notify Event
-- TriggerEvent("SService:Client:KeyHelpNotify", key, text, design)
TriggerEvent("SService:Client:KeyHelpNotify", "E", "Press E to interact", 1)


-- =========================================================
-- SERVER EVENTS
-- Add these examples to a server.lua
-- =========================================================


-- Info Notify Event
-- TriggerClientEvent("SService:Client:InfoNotify", source, message, title, type, length, oocname, design, leftright)
-- @source = The server ID of the target player
TriggerClientEvent("SService:Client:InfoNotify", source, "Hey, this is a test Notify", "S-Service", "info", 5, nil, 1, 1)


-- Announce Notify Event
-- TriggerClientEvent("SService:Client:AnnounceNotify", source, message, type, name, length, design, leftright)
-- @source = The server ID of the target player
TriggerClientEvent("SService:Client:AnnounceNotify", source, "The server restarts in 10 minutes", "server", "S-Service", 5, 1, 1)


-- Team Notify Event
-- TriggerClientEvent("SService:Client:TeamNotifyScript", source, message, length, oocname, design, leftright)
-- @source = The server ID of the target player
TriggerClientEvent("SService:Client:TeamNotifyScript", source, "Hey, this is a test Team Notify", 5, "Christian", 1, 1)


-- Interaction / Key Help Notify Event
-- TriggerClientEvent("SService:Client:KeyHelpNotify", source, key, text, design)
-- @source = The server ID of the target player
TriggerClientEvent("SService:Client:KeyHelpNotify", source, "E", "Press E to interact", 1)