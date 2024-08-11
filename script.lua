local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local main = library:Window("4ozCy hub")

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

main:Button("esp", function()
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

main:Label("Player", Color3.fromRGB(127, 143, 166))

main:Box("Username:", function(text)
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
