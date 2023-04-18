local deathsound = Instance.new("Sound")
deathsound.Parent = game.Workspace
deathsound.SoundId = "rbxassetid://1196653896"
deathsound.Volume = 2
repeat wait() until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You died to-", "Wait a second...", "You aren't a player", "I don't know who you are and why you're here but you don't belong here"}, "Blue")
deathsound:Play()
