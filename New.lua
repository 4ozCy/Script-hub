local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local mainWindow = Library:NewWindow("nozcy's hub")

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

local OtherWindow = Library:NewWindow("nozcy's hub")

local Other = OtherWindow:NewSection("Misc")

Other:CreateTextbox("Username", function(text)
    local targetUsername = text
end)

Other:CreateToggle("View Player", function(value)
        if value then
            local function getPlayer(username)
                for _, player in pairs(game.Players:GetPlayers()) do
                    if player.Name:lower() == username:lower() then
                        return player
                    end
                end
                return nil
            end

            local function viewPlayer(player)
                if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local camera = workspace.CurrentCamera
                    camera.CameraSubject = player.Character.HumanoidRootPart
                    camera.CameraType = Enum.CameraType.Scriptable
                end
            end

            local targetPlayer = getPlayer(targetUsername)
            if targetPlayer then
                viewPlayer(targetPlayer)
            else
                print("Player not found.")
            end
        else
            local camera = workspace.CurrentCamera
            camera.CameraSubject = game.Players.LocalPlayer.Character.HumanoidRootPart
            camera.CameraType = Enum.CameraType.Custom
        end
    end)
end)

Other:CreateButton("Get My Position", function()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local position = player.Character.HumanoidRootPart.Position
        local positionString = tostring(position)
        print("Your current position is: " .. positionString)

        if setclipboard then
            setclipboard(positionString)
            print("Position copied to clipboard!")
        else
            print("Clipboard functionality is not supported.")
        end
    else
        print("Unable to find your position.")
    end
end)

Other:CreateButton("Anti-AFK", function()
    local Player = game.Players.LocalPlayer
    local VirtualUser = game:GetService("VirtualUser")

    Player.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)

    print("Anti-AFK Enabled")
end)

Other:CreateButton("low-gfx", function()
    for i,v in next, (workspace:GetDescendants()) do
 if v:IsA("Part") then v.Material = Enum.Material.SmoothPlastic
 end
 end
end)
