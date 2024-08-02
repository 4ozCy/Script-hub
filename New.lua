local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local mainWindow = Library:NewWindow("nozcyy's hub")

local main = mainWindow:NewSection("Map")

main:CreateButton("teleport", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(287.6754, 439.5106, 480.3295)
local teleportPosition2 = CFrame.new(-22.259986877441406, 472.40972900390625, 113.41948699951172)

humanoidRootPart.CFrame = teleportPosition1
wait(2.5)
humanoidRootPart.CFrame = teleportPosition2
    
end)

local main = mainWindow:NewSection("Player")

main:CreateTextbox("Username", function(text)
    targetUsername = text
end)

main:CreateButton("teleport", function()
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

local otherWindow = Library:NewWindow("nozcyy's hub")

local other = otherWindow:NewSection("Misc")

other:CreateTextbox("Username", function(text)
    targetUsername = text
end)

other:CreateButton("view", function()
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
            local targetRoot = getRoot(game.Players[v].Character)
            if targetRoot then
                workspace.CurrentCamera.CameraSubject = targetRoot
                workspace.CurrentCamera.CFrame = CFrame.new(targetRoot.Position + Vector3.new(0, 5, 10), targetRoot.Position)
            end
        end
    end
end)

Other:CreateTextbox("Username", function(text)
    local targetUsername = text

    local function getPlayer(username, speaker)
        local foundPlayers = {}
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Name:lower():sub(1, #username) == username:lower() then
                table.insert(foundPlayers, player)
            end
        end
        return foundPlayers
    end

    local function Locate(player)
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local position = player.Character.HumanoidRootPart.Position
            print(player.Name .. " is located at: " .. tostring(position))
        end
    end

    Other:CreateToggle("Locate", function(value)
        if value then
            local speaker = game.Players.LocalPlayer
            local players = getPlayer(targetUsername, speaker)
            for _, player in pairs(players) do
                Locate(player)
            end
        end
    end)
        
end)
