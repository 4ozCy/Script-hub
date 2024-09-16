local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local main = library:Window("4ozCy's hub | Rank")

main:Button("under map", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(-39.58056640625, 260.6285400390625, -234.59620666503906)
local teleportPosition2 = CFrame.new(79.99443817138672, 442.25860595703125, -229.62742614746094)
humanoidRootPart.CFrame = teleportPosition1
wait(1.1)
humanoidRootPart.CFrame = teleportPosition2
end)

main:Button("Safe Place", function()
local teleportPosition = Vector3.new(656.1754150390625, 440.90557861328125, -424.47967529296875)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

rootPart.CFrame = CFrame.new(teleportPosition)
end)
