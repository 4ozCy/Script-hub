local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local mainWindow = Library:NewWindow("nozcy's hub")

local main = mainWindow:NewSection("Map")

main:CreateButton("small place", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(287.6754, 439.5106, 480.3295)
local teleportPosition2 = CFrame.new(-22.259986877441406, 472.40972900390625, 113.41948699951172)

humanoidRootPart.CFrame = teleportPosition1
wait(2.3)
humanoidRootPart.CFrame = teleportPosition2 
end)

main:CreateButton("mountain", function()
local teleportPosition = Vector3.new(360.623, 699.103, 374.761)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

rootPart.CFrame = CFrame.new(teleportPosition)
end)

main:CreateButton("under map", function()
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character.HumanoidRootPart

local teleportPosition1 = CFrame.new(-79.09889221191406, 192.86883544921875, -247.15036010742188)
local teleportPosition2 = CFrame.new(13.025981903076172, 661.2735595703125, -157.4413299560547)
humanoidRootPart.CFrame = teleportPosition1
wait(1)
humanoidRootPart.CFrame = teleportPosition2
end)

main:CreateButton("basement", function()
local teleportPosition = Vector3.new(13.025981903076172, 661.2735595703125, -157.4413299560547)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

rootPart.CFrame = CFrame.new(teleportPosition)
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

main:CreateButton("ESP", function()
local settings = {
    defaultcolor = Color3.fromRGB(255, 0, 0),
    teamcheck = false,
    teamcolor = true
}

-- services
local runService = game:GetService("RunService")
local players = game:GetService("Players")

-- variables
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera

-- functions
local newVector2, newColor3, newDrawing = Vector2.new, Color3.new, Drawing.new
local tan, rad = math.tan, math.rad
local round = function(...)
    local a = {}
    for i, v in next, table.pack(...) do
        a[i] = math.round(v)
    end
    return unpack(a)
end
local wtvp = function(...)
    local a, b = camera.WorldToViewportPoint(camera, ...)
    return newVector2(a.X, a.Y), b, a.Z
end

local espCache = {}
local function createEsp(player)
    local drawings = {}

    drawings.box = newDrawing("Square")
    drawings.box.Thickness = 1
    drawings.box.Filled = false
    drawings.box.Color = settings.defaultcolor
    drawings.box.Visible = false
    drawings.box.ZIndex = 2

    drawings.boxoutline = newDrawing("Square")
    drawings.boxoutline.Thickness = 3
    drawings.boxoutline.Filled = false
    drawings.boxoutline.Color = newColor3()
    drawings.boxoutline.Visible = false
    drawings.boxoutline.ZIndex = 1

    drawings.healthbar = newDrawing("Square")
    drawings.healthbar.Thickness = 1
    drawings.healthbar.Filled = true
    drawings.healthbar.Color = Color3.new(0, 1, 0)
    drawings.healthbar.Visible = false
    drawings.healthbar.ZIndex = 2

    drawings.healthoutline = newDrawing("Square")
    drawings.healthoutline.Thickness = 1
    drawings.healthoutline.Filled = true
    drawings.healthoutline.Color = Color3.new(0, 0, 0)
    drawings.healthoutline.Visible = false
    drawings.healthoutline.ZIndex = 1

    drawings.distance = newDrawing("Text")
    drawings.distance.Size = 16
    drawings.distance.Center = true
    drawings.distance.Outline = true
    drawings.distance.OutlineColor = Color3.new(0, 0, 0)
    drawings.distance.Color = Color3.new(1, 1, 1)
    drawings.distance.Visible = false

    drawings.username = newDrawing("Text")
    drawings.username.Size = 16
    drawings.username.Center = true
    drawings.username.Outline = true
    drawings.username.OutlineColor = Color3.new(0, 0, 0)
    drawings.username.Color = Color3.new(1, 1, 1)
    drawings.username.Visible = false

    espCache[player] = drawings
end

local function removeEsp(player)
    if rawget(espCache, player) then
        for _, drawing in next, espCache[player] do
            drawing:Remove()
        end
        espCache[player] = nil
    end
end

local function updateEsp(player, esp)
    local character = player and player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart and humanoid then
            local cframe = rootPart.CFrame
            local position, visible, depth = wtvp(cframe.Position)
            esp.box.Visible = visible
            esp.boxoutline.Visible = visible
            esp.healthbar.Visible = visible
            esp.healthoutline.Visible = visible
            esp.distance.Visible = visible
            esp.username.Visible = visible

            if cframe and visible then
                local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000
                local width, height = round(3 * scaleFactor, 5 * scaleFactor) -- Adjusted size
                local x, y = round(position.X, position.Y)

                esp.box.Size = newVector2(width, height)
                esp.box.Position = newVector2(round(x - width / 2, y - height / 2))
                esp.box.Color = settings.teamcolor and player.TeamColor.Color or settings.defaultcolor

                esp.boxoutline.Size = esp.box.Size
                esp.boxoutline.Position = esp.box.Position

                local healthPercent = humanoid.Health / humanoid.MaxHealth
                esp.healthbar.Size = newVector2(2, height * healthPercent)
                esp.healthbar.Position = newVector2(esp.box.Position.X - 6, esp.box.Position.Y + (height * (1 - healthPercent)))

                esp.healthoutline.Size = newVector2(2, height)
                esp.healthoutline.Position = esp.box.Position + newVector2(-6, 0)

                esp.distance.Text = string.format("%.0f studs", (rootPart.Position - camera.CFrame.Position).Magnitude)
                esp.distance.Position = esp.box.Position + newVector2(width / 2, height + 2)

                -- Combined display name and username
                esp.username.Text = player.DisplayName .. " | " .. player.Name
                esp.username.Position = esp.box.Position + newVector2(width / 2, -20)
            end
        else
            esp.box.Visible = false
            esp.boxoutline.Visible = false
            esp.healthbar.Visible = false
            esp.healthoutline.Visible = false
            esp.distance.Visible = false
            esp.username.Visible = false
        end
    else
        esp.box.Visible = false
        esp.boxoutline.Visible = false
        esp.healthbar.Visible = false
        esp.healthoutline.Visible = false
        esp.distance.Visible = false
        esp.username.Visible = false
    end
end

-- main
for _, player in next, players:GetPlayers() do
    if player ~= localPlayer then
        createEsp(player)
    end
end

players.PlayerAdded:Connect(function(player)
    createEsp(player)
end)

players.PlayerRemoving:Connect(function(player)
    removeEsp(player)
end)

runService:BindToRenderStep("esp", Enum.RenderPriority.Camera.Value, function()
    for player, drawings in next, espCache do
        if settings.teamcheck and player.Team == localPlayer.Team then
            continue
        end

        if drawings and player ~= localPlayer then
            updateEsp(player, drawings)
        end
    end
  end)

   print("esp enable")
end)

local OtherWindow = Library:NewWindow("nozcy's hub")

local Other = OtherWindow:NewSection("Misc")

Other:CreateTextbox("Fov", function(text)
    local fovValue = tonumber(text)
    if fovValue then
        local clampedFOV = math.clamp(fovValue, 30, 150)
        workspace.CurrentCamera.FieldOfView = clampedFOV
    else
        workspace.CurrentCamera.FieldOfView = 50
    end
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

Other:CreateButton("Rejoin", function()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)
