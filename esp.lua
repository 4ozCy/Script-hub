local settings = {
    defaultcolor = Color3.fromRGB(255, 255, 255),
    teamcheck = false,
    teamcolor = true,
    espEnabled = true
}

local runService = game:GetService("RunService")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")

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
    drawings.box = newDrawing("Square")
    drawings.box.Thickness = 1
    drawings.box.Filled = false
    drawings.box.Color = settings.defaultcolor
    drawings.box.Visible = false

    drawings.healthbar = newDrawing("Square")
    drawings.healthbar.Thickness = 1
    drawings.healthbar.Filled = true
    drawings.healthbar.Color = Color3.new(0, 1, 0)
    drawings.healthbar.Visible = false

    drawings.distance = newDrawing("Text")
    drawings.distance.Size = 16
    drawings.distance.Center = true
    drawings.distance.Color = Color3.new(1, 1, 1)
    drawings.distance.Visible = false
    drawings.distance.Font = 3

    drawings.username = newDrawing("Text")
    drawings.username.Size = 16
    drawings.username.Center = true
    drawings.username.Color = Color3.new(1, 1, 1)
    drawings.username.Visible = false
    drawings.username.Font = 3

    drawings.healthPercent = newDrawing("Text")
    drawings.healthPercent.Size = 16
    drawings.healthPercent.Center = true
    drawings.healthPercent.Color = Color3.new(1, 1, 1)
    drawings.healthPercent.Visible = false
    drawings.healthPercent.Font = 3

    drawings.tracer = newDrawing("Line")
    drawings.tracer.Thickness = 1
    drawings.tracer.Color = Color3.new(1, 1, 1)
    drawings.tracer.Visible = false

    espCache[player] = drawings
end

local function removeEsp(player)
    if rawget(espCache, player) then
        for _, drawing in next, espCache[player] do
            drawing.Visible = false
            drawing:Remove()
        end
        espCache[player] = nil
    end
end

local function updateEsp(player, esp)
    local character = player and player.Character
    if character and settings.espEnabled then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart and humanoid then
            local cframe = rootPart.CFrame
            local position, visible, depth = wtvp(cframe.Position)
            esp.box.Visible = visible
            esp.healthbar.Visible = visible
            esp.distance.Visible = visible
            esp.username.Visible = visible
            esp.healthPercent.Visible = visible
            esp.tracer.Visible = visible

            if cframe and visible then
                local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000
                local width, height = round(3 * scaleFactor, 5 * scaleFactor)
                local x, y = round(position.X, position.Y)

                esp.box.Size = newVector2(width, height)
                esp.box.Position = newVector2(round(x - width / 2, y - height / 2))
                esp.box.Color = settings.teamcolor and player.TeamColor.Color or settings.defaultcolor

                local roundedHealth = math.floor(humanoid.Health + 0.5)
                local healthPercent = roundedHealth / humanoid.MaxHealth

                esp.healthbar.Size = newVector2(2, height * healthPercent)
                esp.healthbar.Position = newVector2(esp.box.Position.X - 6, esp.box.Position.Y + (height * (1 - healthPercent)))

                local pos = math.floor((getRoot(players.LocalPlayer.Character).Position - getRoot(player.Character).Position).magnitude)
                esp.distance.Text = string.format("%d M", pos)
                esp.distance.Position = esp.box.Position + newVector2(width / 2, height + 2)

                esp.username.Text = player.DisplayName .. " | " .. player.Name
                esp.username.Position = esp.box.Position + newVector2(width / 2, -20)

                esp.healthPercent.Text = string.format("%.0f%%", healthPercent * 100)
                esp.healthPercent.Position = esp.healthbar.Position - newVector2(24, 0)

                esp.tracer.From = newVector2(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
                esp.tracer.To = newVector2(x, y + height / 2)
            end
        else
            esp.box.Visible = false
            esp.healthbar.Visible = false
            esp.distance.Visible = false
            esp.username.Visible = false
            esp.healthPercent.Visible = false
            esp.tracer.Visible = false
        end
    else
        esp.box.Visible = false
        esp.healthbar.Visible = false
        esp.distance.Visible = false
        esp.username.Visible = false
        esp.healthPercent.Visible = false
        esp.tracer.Visible = false
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
    if settings.espEnabled then
        for player, drawings in next, espCache do
            if settings.teamcheck and player.Team == localPlayer.Team then
                continue
            end

            if drawings and player ~= localPlayer then
                updateEsp(player, drawings)
            end
        end
    else
        for _, drawings in pairs(espCache) do
            for _, drawing in pairs(drawings) do
                drawing.Visible = false
            end
        end
    end
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local ToggleButton = Instance.new("TextButton", ScreenGui)

ToggleButton.Size = UDim2.new(0, 100, 0, 100)
ToggleButton.Position = UDim2.new(0.85, 0, 0.05, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ToggleButton.Text = "ESP ON"
ToggleButton.TextScaled = true
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BorderSizePixel = 0
ToggleButton.BackgroundTransparency = 0.5
ToggleButton.ZIndex = 10
ToggleButton.Draggable = true

local isDragging = false
local dragInput, mousePos, framePos

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        mousePos = input.Position
        framePos = ToggleButton.Position
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

ToggleButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)

userInputService.InputChanged:Connect(function(input)
    if input == dragInput and isDragging then
        local delta = input.Position - mousePos
        ToggleButton.Position = UDim2.new(
            framePos.X.Scale, framePos.X.Offset + delta.X,
            framePos.Y.Scale, framePos.Y.Offset + delta.Y
        )
    end
end)

ToggleButton.MouseButton1Click:Connect(function()
    settings.espEnabled = not settings.espEnabled
    if settings.espEnabled then
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        ToggleButton.Text = "ESP ON"
    else
        ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        ToggleButton.Text = "ESP OFF"
    end
end)
