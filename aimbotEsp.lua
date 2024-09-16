local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local main = library:Window("Aimbot & Esp")



mainButton("ESP", function()
local settings = {
    defaultcolor = Color3.fromRGB(255, 0, 0),
    teamcheck = false,
    teamcolor = true
}

local runService = game:GetService("RunService")
local players = game:GetService("Players")

local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera

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

local function getRoot(part)
    return part:IsA("Model") and part.PrimaryPart or part:FindFirstChildWhichIsA("BasePart") or part
end

local espCache = {}
local function createEsp(player)
    local drawings = {}

    -- Box
    drawings.box = newDrawing("Square")
    drawings.box.Thickness = 1
    drawings.box.Filled = false
    drawings.box.Color = settings.defaultcolor
    drawings.box.Visible = false
    drawings.box.ZIndex = 2

    -- Box Outline
    drawings.boxoutline = newDrawing("Square")
    drawings.boxoutline.Thickness = 3  -- Increased thickness for outline
    drawings.boxoutline.Filled = false
    drawings.boxoutline.Color = Color3.fromRGB(255, 182, 193) -- Softer pink
    drawings.boxoutline.Visible = false
    drawings.boxoutline.ZIndex = 1  -- Ensure this is behind the box

    -- Health Bar
    drawings.healthbar = newDrawing("Square")
    drawings.healthbar.Thickness = 1
    drawings.healthbar.Filled = true
    drawings.healthbar.Color = Color3.new(0, 1, 0)
    drawings.healthbar.Visible = false
    drawings.healthbar.ZIndex = 3  -- Ensure it's above the box

    -- Health Bar Outline
    drawings.healthoutline = newDrawing("Square")
    drawings.healthoutline.Thickness = 2  -- Increased thickness for outline
    drawings.healthoutline.Filled = true
    drawings.healthoutline.Color = Color3.new(1, 1, 1)  -- White color for health outline
    drawings.healthoutline.Visible = false
    drawings.healthoutline.ZIndex = 2  -- Ensure it's between box and health bar

    drawings.distance = newDrawing("Text")
    drawings.distance.Size = 16
    drawings.distance.Center = true
    drawings.distance.Outline = true
    drawings.distance.OutlineColor = Color3.new(0, 0, 0)
    drawings.distance.Color = Color3.new(1, 1, 1)
    drawings.distance.Visible = false
    drawings.distance.Font = 3

    drawings.username = newDrawing("Text")
    drawings.username.Size = 16
    drawings.username.Center = true
    drawings.username.Outline = true
    drawings.username.OutlineColor = Color3.new(0, 0, 0)
    drawings.username.Color = Color3.new(1, 1, 1)
    drawings.username.Visible = false
    drawings.username.Font = 3

    drawings.healthPercent = newDrawing("Text")
    drawings.healthPercent.Size = 16
    drawings.healthPercent.Center = true
    drawings.healthPercent.Outline = true
    drawings.healthPercent.OutlineColor = Color3.new(0, 0, 0)
    drawings.healthPercent.Color = Color3.new(1, 1, 1)
    drawings.healthPercent.Visible = false
    drawings.healthPercent.Font = 3

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
            esp.healthPercent.Visible = visible

            if cframe and visible then
                local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000
                local width, height = round(3 * scaleFactor, 5 * scaleFactor)
                local x, y = round(position.X, position.Y)

                esp.box.Size = newVector2(width, height)
                esp.box.Position = newVector2(round(x - width / 2, y - height / 2))
                esp.box.Color = settings.teamcolor and player.TeamColor.Color or settings.defaultcolor

                esp.boxoutline.Size = esp.box.Size + newVector2(2, 2)  -- Slightly larger size for outline
                esp.boxoutline.Position = esp.box.Position - newVector2(1, 1)  -- Adjust position to center the outline

                local healthPercent = humanoid.Health / humanoid.MaxHealth
                esp.healthbar.Size = newVector2(2, height * healthPercent)
                esp.healthbar.Position = newVector2(esp.box.Position.X - 6, esp.box.Position.Y + (height * (1 - healthPercent)))

                esp.healthoutline.Size = newVector2(4, height)  -- Slightly larger size for outline
                esp.healthoutline.Position = esp.box.Position + newVector2(-8, 0)  -- Adjust position to align with health bar

                local rootPartPosition = getRoot(player.Character).Position
                local cameraPosition = getRoot(localPlayer.Character).Position
                local distanceInStuds = math.floor((cameraPosition - rootPartPosition).Magnitude)
                esp.distance.Text = string.format("%.0f studs", distanceInStuds)
                esp.distance.Position = esp.box.Position + newVector2(width / 2, height + 2)

                esp.username.Text = player.DisplayName .. " | " .. player.Name
                esp.username.Position = esp.box.Position + newVector2(width / 2, -20)

                esp.healthPercent.Text = string.format("%.0f%%", healthPercent * 100)
                esp.healthPercent.Position = esp.healthbar.Position - newVector2(24, 0)
            end
        else
            esp.box.Visible = false
            esp.boxoutline.Visible = false
            esp.healthbar.Visible = false
            esp.healthoutline.Visible = false
            esp.distance.Visible = false
            esp.username.Visible = false
            esp.healthPercent.Visible = false
        end
    else
        esp.box.Visible = false
        esp.boxoutline.Visible = false
        esp.healthbar.Visible = false
        esp.healthoutline.Visible = false
        esp.distance.Visible = false
        esp.username.Visible = false
        esp.healthPercent.Visible = false
    end
end

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
