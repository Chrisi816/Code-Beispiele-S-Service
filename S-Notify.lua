-- Client

-- Normal info Notify
-- Design: 1 = modern; 2 = round; 3 = classic; Leftright: 1 = left; 2 = right;
-- 1 = "info", 2 = "success", 3 = "error", 4 = "ooc"

exports["S-Notify"]:MakeInfoNotify(1, "info", 1, "Hey, that's the best Notify Script", "S-Service", 5)

-- Normal Announce Notify

exports["S-Notify"]:MakeAnnounceNotify(1, "server", 1, "Hey, that's the best Notify Script", "S-Service", 5)

-- Team Notify

exports["S-Notify"]:MakeTeamNotify(1, 1, "Hey, that's the best Notify Script", 5, "Chrisi")

-- Key help Notify

exports["S-Notify"]:MakeKeyHelpNotify(1, "E", "Hey, that's the best Notify Script")
