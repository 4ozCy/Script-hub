local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local mainWindow = Library:NewWindow("Skidd hub")

local main = mainWindow:NewSection("Main")

main:CreateButton("teleport", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(287.6754, 439.5106, 480.3295)
local teleportPosition2 = CFrame.new(239.7410, 443.8971, -110.4596)

humanoidRootPart.CFrame = teleportPosition1
wait(3.2)
humanoidRootPart.CFrame = teleportPosition2
