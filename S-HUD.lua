-- Client

-- Normal info Notify
exports["S-HUD"]:MakeNotifyInfo("info", "S-Service", "Hey, that's the best Notify Script", 5000)

-- Announce Notify
exports["S-HUD"]:MakeAnnounce("Hey, that's the best Notify Script", "server", "Chrisi", 5000)

-- Team Notify
exports["S-HUD"]:MakeTeamNotify("Chrisi", "Hey, that's the best Notify Script", 5000)

-- Key Help Notify
exports["S-HUD"]:MakeHelpNotify("E", "Hey, that's the best Notify Script")

-- Progress Bar
exports["S-HUD"]:MakeProgressbar("Hey, that's the best Notify Script", 5000)

-- Open a Text UI

exports["S-HUD"]:ShowTextUI("E", "Hey, this is a example Text UI Notify")

-- Close a Text UI Instance

exports["S-HUD"]:HideTextUI()
