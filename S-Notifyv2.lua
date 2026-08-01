-- Client

-- Interaction Notify
-- exports["S-NotifyV2"]:HelpNotify(key, message, design)
-- @key = The interaction key, for example "E"
-- @message = The message displayed under the key
-- @design = The design ID
exports["S-NotifyV2"]:HelpNotify("E", "Press E to interact", 1)


-- Admin / Team Chat Notify
-- exports["S-NotifyV2"]:DisplayAdminChatNotify(message, name, idofplayer, length, design)
-- @message = The message that should be displayed
-- @name = The player or team member name
-- @idofplayer = The player ID that should be displayed
-- @length = The display duration in seconds
-- @design = The design ID
exports["S-NotifyV2"]:DisplayAdminChatNotify("Hey, this is a test Team Notify", "Christian", 1, 5, 1)


-- Info Notify
-- exports["S-NotifyV2"]:DisplayNotify(type, titel, message, length, name, ID, design)
-- @type = "info", "success", "error", "ooc" or "lifeinvader"
-- @titel = The title that should be displayed
-- @message = The message that should be displayed
-- @length = The display duration in seconds
-- @name = The name used for OOC or Lifeinvader notifications
-- @ID = The player ID for OOC or number for Lifeinvader
-- @design = The design ID
exports["S-NotifyV2"]:DisplayNotify("info", "S-Service", "Hey, this is a test Notify", 5, nil, nil, 1)


-- Announce
-- exports["S-NotifyV2"]:DisplayAnnounce(typeofannounce, message, name, length, lockedzone, design)
-- @typeofannounce = "server", "event", "police", "medic" or "faction"
-- @message = The announcement message
-- @name = The name that should be displayed
-- @length = The display duration in seconds
-- @lockedzone = Whether the zone should be locked
-- @design = The design ID
exports["S-NotifyV2"]:DisplayAnnounce("server", "The server restarts in 10 minutes", "S-Service", 5, false, 1)


-- Progressbar
-- exports["S-NotifyV2"]:MakeProgressbar(text, length, design)
-- @text = The text displayed inside the progressbar
-- @length = The progressbar duration in milliseconds
-- @design = The design ID
exports["S-NotifyV2"]:MakeProgressbar("Repairing vehicle...", 5000, 1)


-- Open Text UI
-- exports["S-NotifyV2"]:ShowHelpNotify(key, text, design)
-- @key = The interaction key, for example "E"
-- @text = The text displayed next to the key
-- @design = The design ID
exports["S-NotifyV2"]:ShowHelpNotify("E", "Open the garage", 1)


-- Close Text UI
-- exports["S-NotifyV2"]:RemoveHelpNotify()
exports["S-NotifyV2"]:RemoveHelpNotify()


-- Remove Active Progressbar
-- exports["S-NotifyV2"]:DestroyProgressBar()
exports["S-NotifyV2"]:DestroyProgressBar()

-- Server

-- Server Announce
-- exports["S-NotifyV2"]:DisplayAnnounce(announceType, message, displayName, length, lockedzone, design)
-- @announceType = "server", "event", "police", "medic" or "faction"
-- @message = The announcement message
-- @displayName = The name that should be displayed
-- @length = The display duration in seconds
-- @lockedzone = Whether the zone should be locked
-- @design = The design ID
exports["S-NotifyV2"]:DisplayAnnounce("server", "The server restarts in 10 minutes", "S-Service", 5, false, 1)

-- Client

-- Admin / Team Chat Notify Event
-- TriggerEvent("SService:NotifyV2:AdminChatNotify", message, name, id, length, design)
TriggerEvent("SService:NotifyV2:AdminChatNotify", "Hey, this is a test Team Notify", "Christian", 1, 5, 1)


-- Info Notify Event
-- TriggerEvent("SService:NotifyV2:Notif", type, titel, message, length, name, number, design)
TriggerEvent("SService:NotifyV2:Notif", "info", "S-Service", "Hey, this is a test Notify", 5, nil, nil, 1)


-- Help Notify Event
-- TriggerEvent("SService:NotifyV2:HelpNotify", key, message, design)
TriggerEvent("SService:NotifyV2:HelpNotify", "E", "Press E to interact", 1)


-- Open Progressbar Event
-- TriggerEvent("SService:NotifyV2:Progressbar", length, text, design)
TriggerEvent("SService:NotifyV2:Progressbar", 5000, "Repairing vehicle...", 1)


-- Close Progressbar Event
-- TriggerEvent("SService:NotifyV2:DestroyProgressBar")
TriggerEvent("SService:NotifyV2:DestroyProgressBar")


-- Announce Event
-- TriggerEvent("SService:NotifyV2:Announce", typeofannounce, message, name, length, lockedzone, design)
TriggerEvent("SService:NotifyV2:Announce", "server", "The server restarts in 10 minutes", "S-Service", 5, false, 1)


-- Server

-- Admin / Team Chat Notify Event
-- TriggerClientEvent("SService:NotifyV2:AdminChatNotify", source, message, name, id, length, design)
-- @source = The server ID of the target player
TriggerClientEvent("SService:NotifyV2:AdminChatNotify", source, "Hey, this is a test Team Notify", "Christian", 1, 5, 1)


-- Info Notify Event
-- TriggerClientEvent("SService:NotifyV2:Notif", source, type, titel, message, length, name, number, design)
-- @source = The server ID of the target player
TriggerClientEvent("SService:NotifyV2:Notif", source, "info", "S-Service", "Hey, this is a test Notify", 5, nil, nil, 1)


-- Help Notify Event
-- TriggerClientEvent("SService:NotifyV2:HelpNotify", source, key, message, design)
-- @source = The server ID of the target player
TriggerClientEvent("SService:NotifyV2:HelpNotify", source, "E", "Press E to interact", 1)


-- Open Progressbar Event
-- TriggerClientEvent("SService:NotifyV2:Progressbar", source, length, text, design)
-- @source = The server ID of the target player
TriggerClientEvent("SService:NotifyV2:Progressbar", source, 5000, "Repairing vehicle...", 1)


-- Close Progressbar Event
-- TriggerClientEvent("SService:NotifyV2:DestroyProgressBar", source)
-- @source = The server ID of the target player
TriggerClientEvent("SService:NotifyV2:DestroyProgressBar", source)


-- Announce Event
-- TriggerClientEvent("SService:NotifyV2:Announce", source, typeofannounce, message, name, length, lockedzone, design)
-- @source = The server ID of the target player
TriggerClientEvent("SService:NotifyV2:Announce", source, "server", "The server restarts in 10 minutes", "S-Service", 5, false, 1)