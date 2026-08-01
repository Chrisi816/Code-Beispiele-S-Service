-- Client

-- Interaction / Help Notify
-- exports["S-HUDv2"]:HelpNotify(Key, message)
-- @Key = The help key, for example "E"
-- @message = The message displayed under the key
exports["S-HUDv2"]:HelpNotify("E", "Hey, this is a test Help Notify")

-- Team / Admin Chat Notify
-- exports["S-HUDv2"]:DisplayAdminChatNotify(message, name, idofplayer, length)
-- @message = The message that should be displayed
-- @name = The player name that should be displayed
-- @idofplayer = The player ID that should be displayed
-- @length = Display duration in seconds
exports["S-HUDv2"]:DisplayAdminChatNotify("This is a team message", "Christian", 1, 5)

-- Notify
-- exports["S-HUDv2"]:DisplayNotify(type, titel, message, length, name, ID)
-- @type = "info", "success", "error", "ooc" or "lifeinvader"
-- @titel = The title that should be displayed
-- @message = The message that should be displayed
-- @length = Display duration in seconds
-- @name = Used for OOC and Lifeinvader notifications
-- @ID = Player ID for OOC or phone number for Lifeinvader
exports["S-HUDv2"]:DisplayNotify("success", "Success", "The action was successful", 5, "Christian", 1)

-- Announce
-- exports["S-HUDv2"]:DisplayAnnounce(typeofannounce, message, name, length, lockedzone)
-- @typeofannounce = "server", "event", "police", "medic" or "faction"
-- @message = The announcement message
-- @name = The name that should be displayed
-- @length = Display duration in seconds
-- @lockedzone = Optional locked-zone value
exports["S-HUDv2"]:DisplayAnnounce("server", "The server restarts in 10 minutes", "Server", 10, false)

-- Progressbar
-- exports["S-HUDv2"]:MakeProgressbar(text, length)
-- @text = The progressbar text
-- @length = Duration in milliseconds
exports["S-HUDv2"]:MakeProgressbar("Repairing vehicle...", 5000)

-- Remove active Progressbar
-- exports["S-HUDv2"]:DestroyProgressBar()
exports["S-HUDv2"]:DestroyProgressBar()

-- Open Text UI / Help Notify
-- exports["S-HUDv2"]:ShowHelpNotify(key, text)
-- @key = The interaction key, for example "E"
-- @text = The interaction text
exports["S-HUDv2"]:ShowHelpNotify("E", "Open the garage")

-- Close Text UI / Help Notify
-- exports["S-HUDv2"]:RemoveHelpNotify()
exports["S-HUDv2"]:RemoveHelpNotify()

-- Make the HUD visible
-- exports["S-HUDv2"]:OpenHUD()
exports["S-HUDv2"]:OpenHUD()

-- Make the HUD invisible
-- exports["S-HUDv2"]:RemoveHUD()
exports["S-HUDv2"]:RemoveHUD()

-- Force HUD status
-- exports["S-HUDv2"]:ForceHudStatus(bool)
-- @bool = true hides the HUD, false shows the HUD
exports["S-HUDv2"]:ForceHudStatus(true)


-- Enable / Disable cinema mode
-- exports["S-HUDv2"]:ControlCinemaMode()
exports["S-HUDv2"]:ControlCinemaMode()


-- Change the position of a HUD element
-- exports["S-HUDv2"]:PosHandler(id, number)
-- @id = ID of the HUD element
-- @number = Position value used by the HUD configuration
exports["S-HUDv2"]:PosHandler("status", 1)

-- Set voice range
-- exports["S-HUDv2"]:SetRange(mode)
-- @mode = The voice range mode used by your voice system
exports["S-HUDv2"]:SetRange(2)

-- Open top-left whitelist display
-- exports["S-HUDv2"]:OpenWhiteListDisplay(message, value)
-- @message = The text that should be displayed
-- @value = The value that should be displayed
exports["S-HUDv2"]:OpenWhiteListDisplay("Players in queue", 5)

-- Close top-left whitelist display
-- exports["S-HUDv2"]:CloseWhiteListDisplay()
exports["S-HUDv2"]:CloseWhiteListDisplay()


-- Open top-left timer display
-- exports["S-HUDv2"]:OpenTimerFunction(message, time)
-- @message = The timer text
-- @time = Timer duration
exports["S-HUDv2"]:OpenTimerFunction("Event starts in", 60)

-- Remove top-left timer display
-- exports["S-HUDv2"]:CancelTimerFunction()
exports["S-HUDv2"]:CancelTimerFunction()


-- Client Events
-- Die folgenden Events werden in einer client.lua ausgelöst.

-- Admin / Team Chat Notify Event
-- TriggerEvent("SServcie:SHUDV2:DisplayAdminChatNotify", message, name, id, length)
-- @message = The message that should be displayed
-- @name = The player name that should be displayed
-- @id = The player ID that should be displayed
-- @length = Display duration in seconds
TriggerEvent("SServcie:SHUDV2:DisplayAdminChatNotify", "This is a team message", "Christian", 1, 5)

-- Notify Event
-- TriggerEvent("SService:SHUDV2:DisplayNotify", type, titel, message, length, name, number)
-- @type = "info", "success", "error", "ooc" or "lifeinvader"
-- @titel = The title that should be displayed
-- @message = The message that should be displayed
-- @length = Display duration in seconds
-- @name = Used for OOC and Lifeinvader notifications
-- @number = Player ID for OOC or phone number for Lifeinvader
TriggerEvent("SService:SHUDV2:DisplayNotify", "info", "Information", "This is a test notify", 5, "Christian", 1)

-- Progressbar Event
-- TriggerEvent("SServcie:SHUDV2:Progressbar", length, text)
-- @length = Duration in milliseconds
-- @text = The progressbar text
TriggerEvent("SServcie:SHUDV2:Progressbar", 5000, "Repairing vehicle...")

-- Announce Event
-- TriggerEvent("SService:SHUDV2:DisplayAnnounce", typeofannounce, message, name, length, lockedzone)
-- @typeofannounce = "server", "event", "police", "medic" or "faction"
-- @message = The announcement message
-- @name = The name that should be displayed
-- @length = Display duration in seconds
-- @lockedzone = Optional locked-zone value
TriggerEvent("SService:SHUDV2:DisplayAnnounce", "server", "The server restarts in 10 minutes", "Server", 10, false)


-- Server

-- Admin / Team Chat Notify for a player
-- TriggerClientEvent("SServcie:SHUDV2:DisplayAdminChatNotify", source, message, name, id, length)
-- @source = Target player ID
-- @message = The message that should be displayed
-- @name = The player name that should be displayed
-- @id = The player ID that should be displayed
-- @length = Display duration in seconds
TriggerClientEvent("SServcie:SHUDV2:DisplayAdminChatNotify", source, "This is a team message", "Christian", 1, 5)

-- Notify for a player
-- TriggerClientEvent("SService:SHUDV2:DisplayNotify", source, type, titel, message, length, name, number)
-- @source = Target player ID
-- @type = "info", "success", "error", "ooc" or "lifeinvader"
-- @titel = The title that should be displayed
-- @message = The message that should be displayed
-- @length = Display duration in seconds
-- @name = Used for OOC and Lifeinvader notifications
-- @number = Player ID for OOC or phone number for Lifeinvader
TriggerClientEvent("SService:SHUDV2:DisplayNotify", source, "success", "Success", "The action was successful", 5, "Christian", 1)

-- Progressbar for a player
-- TriggerClientEvent("SServcie:SHUDV2:Progressbar", source, length, text)
-- @source = Target player ID
-- @length = Duration in milliseconds
-- @text = The progressbar text
TriggerClientEvent("SServcie:SHUDV2:Progressbar", source, 5000, "Repairing vehicle...")

-- Announce for a player
-- TriggerClientEvent("SService:SHUDV2:DisplayAnnounce", source, typeofannounce, message, name, length, lockedzone)
-- @source = Target player ID
-- @typeofannounce = "server", "event", "police", "medic" or "faction"
-- @message = The announcement message
-- @name = The name that should be displayed
-- @length = Display duration in seconds
-- @lockedzone = Optional locked-zone value
TriggerClientEvent("SService:SHUDV2:DisplayAnnounce", source, "server", "The server restarts in 10 minutes", "Server", 10, false)
