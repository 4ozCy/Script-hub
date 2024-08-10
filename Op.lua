local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local main = library:Window("Aimbot & esp")

main:Label("Made by: 4ozCy", Color3.fromRGB(127, 143, 166))

main:Button("Aimbot", function()
main:Button("Aimbot", function()
    local settings = {
        aimSmoothness = 0.1, -- The lower the value, the smoother the aim (0.1 is smooth, 1 is instant)
        aimPart = "Head", -- The part of the character to aim at
    }

    -- Services
    local runService = game:GetService("RunService")
    local players = game:GetService("Players")
    local camera = workspace.CurrentCamera
    local localPlayer = players.LocalPlayer

    -- Functions
    local function getRandomPlayer()
        local otherPlayers = {}

        for _, player in ipairs(players:GetPlayers()) do
            if player ~= localPlayer and player.Character and player.Character:FindFirstChild(settings.aimPart) then
                table.insert(otherPlayers, player)
            end
        end

        if #otherPlayers > 0 then
            return otherPlayers[math.random(1, #otherPlayers)]
        end
    end

    local function aimAt(target)
        if not target or not target.Character then return end
        local aimPart = target.Character:FindFirstChild(settings.aimPart)
        if not aimPart then return end

        local targetPosition = aimPart.Position
        local cameraCFrame = camera.CFrame.Position

        local direction = (targetPosition - cameraCFrame).Unit
        local targetCFrame = CFrame.new(cameraCFrame, cameraCFrame + direction)

        camera.CFrame = camera.CFrame:Lerp(targetCFrame, settings.aimSmoothness)
    end

    -- Main Loop
    runService.RenderStepped:Connect(function()
        local target = getRandomPlayer()
        if target then
            aimAt(target)
        end
    end)

    print("restart")
end)

main:Button("Esp", function ()
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
