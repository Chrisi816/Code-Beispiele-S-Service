-- Client

-- Normal Info Notify
-- exports["S-HUD"]:MakeNotifyInfo(category, title, message, length)
-- @category = The notify category, for example "info", "success" or "error"
-- @title = The title that should be displayed
-- @message = The message that should be displayed
-- @length = Display duration in milliseconds
exports["S-HUD"]:MakeNotifyInfo("info", "S-Service", "Hey, this is a test Notify", 5000)


-- Announce Notify
-- exports["S-HUD"]:MakeAnnounce(message, category, name, length)
-- @message = The announcement message
-- @category = The announce category, for example "server"
-- @name = The name that should be displayed
-- @length = Display duration in milliseconds
exports["S-HUD"]:MakeAnnounce("The server restarts in 10 minutes", "server", "S-Service", 5000)


-- Team Notify
-- exports["S-HUD"]:MakeTeamNotify(name, message, length)
-- @name = The player or team member name that should be displayed
-- @message = The message that should be displayed
-- @length = Display duration in milliseconds
exports["S-HUD"]:MakeTeamNotify("Christian", "Hey, this is a test Team Notify", 5000)


-- Interaction / Help Notify
-- exports["S-HUD"]:MakeHelpNotify(key, message)
-- @key = The interaction key, for example "E"
-- @message = The message displayed under the key
exports["S-HUD"]:MakeHelpNotify("E", "Press E to interact")


-- Progressbar
-- exports["S-HUD"]:MakeProgressbar(message, length)
-- @message = The text displayed inside the progressbar
-- @length = Progressbar duration in milliseconds
exports["S-HUD"]:MakeProgressbar("Repairing vehicle...", 5000)


-- Open Text UI
-- exports["S-HUD"]:ShowTextUI(key, message)
-- @key = The interaction key, for example "E"
-- @message = The text displayed next to the key
exports["S-HUD"]:ShowTextUI("E", "Open the garage")


-- Close Text UI
-- exports["S-HUD"]:HideTextUI()
exports["S-HUD"]:HideTextUI()