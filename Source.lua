-- Made by JohnyGaming#2917, make sure to credit
-- also credits to Master Oogway#3595

local userId = "475706351"
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Script By JohnyGaming#2917", -- Required
	Text = "Jeff The Killer Morph script created by JohnyGaming#2917, please credit me if you make a video with this script! :)", -- Required
	Icon = content, -- Optional
	Duration = 10
})

if _G.ThirdPerson then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/idkbutiampoggers/JeffTheKillerMorphV2/main/ThirdPerson.lua"))()
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/idkbutiampoggers/JeffTheKillerMorphV2/main/FirstPerson.lua"))()
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/idkbutiampoggers/JeffTheKillerMorphV2/main/Death.lua"))()
