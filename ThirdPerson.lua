-- Made by JohnyGaming#2917, make sure to credit
-- also credits to Master Oogway#3595

local Ambush = game:GetObjects("rbxassetid://13167265931")[1]
local toolmodel = game:GetObjects("rbxassetid://13109828893")[1]
local tool = toolmodel.KnifeTool
tool.Parent = game.Players.LocalPlayer.Backpack
local UIS = game:GetService("UserInputService")

for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Ambush" then
        v:Destroy()
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Transparency = 1
    end
    if v:IsA("Part") then
        v.Transparency = 1
    end
    if v:IsA("Accessory") then
        v:Destroy()
    end
    game.Players.LocalPlayer.Character.Head.face.Transparency = 1
end
Ambush.Parent = game.Workspace
wait(1)
for i,v in pairs(Ambush:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Anchored = true
        v.CanCollide = false
    end
    if v:IsA("Part") then
        v.Anchored = true
        v.CanCollide = false
    end
end
game:GetService("RunService").RenderStepped:Connect(function()
    Ambush:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -0.6))
    game.Workspace.CurrentCamera.CFrame = (game.Players.LocalPlayer.Character.Head.CFrame * CFrame.Angles(math.rad(-30),0,0)) * CFrame.new(0,0.5,10)
end)
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()
local toolpart = Instance.new("Part")
toolpart.CanCollide = false
toolpart.Transparency = 100
toolpart.Name = "Handle"
toolpart.Parent = tool
Mouse.Button1Down:connect(function()
  if tool.Parent == Plr.Character then
    if not Mouse.Target then
      return
    end
    if Mouse.Target:FindFirstAncestorOfClass("Model").Parent == game.Workspace.CurrentRooms then
      return
    else
      if Mouse.Target:FindFirstAncestorOfClass("Model").Name == "JeffTheKillerMorph" then
        return
      else
        Mouse.Target:FindFirstAncestorOfClass("Model"):Destroy()
        Ambush.Knife.Stab:Play()
      end
    end
  end
end) 
