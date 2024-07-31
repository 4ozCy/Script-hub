local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local mainWindow = Library:NewWindow("Skidd hub")

local main = mainWindow:NewSection("Main")

main:CreateButton("teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(287.6754455566406, 439.5106201171875, 480.32952880859375)
end)
