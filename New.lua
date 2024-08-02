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

local main = mainWindow:NewSection("Misc")

main:CreateTextbox("Username", function(text)
    targetUsername = text
end)

main:CreateButton("view", function()
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

main:CreateTextbox("Username", function(text)
    targetUsername = text
end)

main:CreateButton("Locate Player", function()
    local function createESP(player)
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local espPart = Instance.new("Part")
            espPart.Name = "ESP"
            espPart.Size = Vector3.new(5, 5, 1)
            espPart.Anchored = true
            espPart.CanCollide = false
            espPart.BrickColor = BrickColor.new("Bright red")
            espPart.Material = Enum.Material.Neon
            espPart.Transparency = 0.5
            espPart.Parent = workspace
            espPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)

            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Parent = espPart
            billboardGui.Adornee = espPart
            billboardGui.Size = UDim2.new(0, 200, 0, 50)
            billboardGui.StudsOffset = Vector3.new(0, 3, 0)

            local textLabel = Instance.new("TextLabel")
            textLabel.Parent = billboardGui
            textLabel.Text = player.Name
            textLabel.TextColor3 = Color3.new(1, 1, 1)
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0.5
        end
    end

    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name:lower() == targetUsername:lower() then
            createESP(player)
        end
    end
end)
