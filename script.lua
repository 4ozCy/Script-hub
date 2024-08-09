local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local main = library:Window("nozcy's hub")

main:Button("small place", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(287.6754, 439.5106, 480.3295)
local teleportPosition2 = CFrame.new(-22.259986877441406, 472.40972900390625, 113.41948699951172)

humanoidRootPart.CFrame = teleportPosition1
wait(2.3)
humanoidRootPart.CFrame = teleportPosition2
end)

main:Button("Void", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(249.52169799804688, 116.16133117675781, 1094.6927490234375)
local teleportPosition2 = CFrame.new(13.025981903076172, 661.2735595703125, -157.4413299560547)
humanoidRootPart.CFrame = teleportPosition1
wait(1.1)
humanoidRootPart.CFrame = teleportPosition2
end)
