-- Client
-- type: "info"; "success"; "error"; "ooc"
-- design: 1 = Normal; 2 = Circle; 3 = Modern

-- Make an info notify for players.

exports["S-Notify"]:MakeInfoNotify("Hey, that's the best Notify Script", "S-Service", "info", 5, nil, 1, 1)

-- Make an announcement for a player

exports["S-Notify"]:MakeAnnounceNotify("Hey, that's the best Notify Script", "server", "S-Service", 5, 1, 1)

-- Make a team notify for a player

exports["S-Notify"]:MakeTeamNotify("Hey, that's the best Notify Script", 5, "Chrisi", 1, 1)

-- Make an interaction notification for a player

exports["S-Notify"]:MakeKeyHelpNotify("E", "Hey, that's the best Notify Script", 1)
