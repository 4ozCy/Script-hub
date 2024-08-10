local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local main = library:Window("nozcy's hub")

main:Button("Small Place", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(287.6754, 439.5106, 480.3295)
local teleportPosition2 = CFrame.new(-22.259986877441406, 472.40972900390625, 113.41948699951172)

humanoidRootPart.CFrame = teleportPosition1
wait(2.3)
humanoidRootPart.CFrame = teleportPosition2
end)

main:Button("Mountain", function()
local teleportPosition = Vector3.new(360.623, 699.103, 374.761)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

rootPart.CFrame = CFrame.new(teleportPosition)
end)
main:Button("Under Map", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(249.52169799804688, 116.16133117675781, 1094.6927490234375)
local teleportPosition2 = CFrame.new(13.025981903076172, 661.2735595703125, -157.4413299560547)
humanoidRootPart.CFrame = teleportPosition1
wait(1.1)
humanoidRootPart.CFrame = teleportPosition2
end)

main:Button("Basement", function()
local teleportPosition = Vector3.new(567.5752563476562, 439.5106201171875, -414.8644714355469)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

rootPart.CFrame = CFrame.new(teleportPosition)
end)

main:Label("Misc", Color3.fromRGB(127, 143, 166))

main:Box("Username", function(text)
targetUsername = text
end)

main:Button("teleport", function()
local function getPlayer(username, speaker)
        local foundPlayers = {}
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Name:lower():sub(1, #username) == username:lower() then
                table.insert(foundPlayers, player.Name)
            end
        end
        return foundPlayers
    end

    local function getRoot(character)
        return character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
    end

    local players = getPlayer(targetUsername, game.Players.LocalPlayer)
    
    for i, v in pairs(players) do
        if game.Players[v] and game.Players[v].Character then
            local speaker = game.Players.LocalPlayer
            local humanoid = speaker.Character:FindFirstChildOfClass('Humanoid')

            if humanoid and humanoid.SeatPart then
                humanoid.Sit = false
                wait(0.1)
            end
            
            local speakerRoot = getRoot(speaker.Character)
            local targetRoot = getRoot(game.Players[v].Character)
            speakerRoot.CFrame = targetRoot.CFrame + Vector3.new(1, 1, 1)
        end
    end
end)
