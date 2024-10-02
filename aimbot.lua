local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local cam = workspace.CurrentCamera

local aimbotEnabled = false
local teamCheck = false
local currentTarget = nil
local hue = 0
local teamCheckDecided = false

local fov = 135
local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = cam.ViewportSize / 2

local allowedGameIDs = {
    [2753915549] = "Torso",
    [10449761463] = "Torso"
}

local defaultTargetPart = "Head"
local targetPart = defaultTargetPart

if allowedGameIDs[game.PlaceId] then
    targetPart = allowedGameIDs[game.PlaceId]
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local ToggleButton = Instance.new("TextButton", ScreenGui)
ToggleButton.Size = UDim2.new(0, 100, 0, 100)
ToggleButton.Position = UDim2.new(0.05, 0, 0.05, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ToggleButton.Text = "AIMBOT OFF"
ToggleButton.TextScaled = true
ToggleButton.Font = Enum.Font.IndieFlower
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BorderSizePixel = 0
ToggleButton.BackgroundTransparency = 0.5
ToggleButton.ZIndex = 10
ToggleButton.Draggable = true
ToggleButton.Visible = false

local NotificationFrame = Instance.new("Frame", ScreenGui)
NotificationFrame.Size = UDim2.new(0, 300, 0, 150)
NotificationFrame.Position = UDim2.new(0.5, -150, 0.4, 0)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Visible = true

local NotificationText = Instance.new("TextLabel", NotificationFrame)
NotificationText.Size = UDim2.new(1, 0, 0.6, 0)
NotificationText.Position = UDim2.new(0, 0, 0, 0)
NotificationText.BackgroundTransparency = 1
NotificationText.Text = "Enable Team Check?"
NotificationText.TextScaled = true
NotificationText.Font = Enum.Font.IndieFlower
NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)

local YesButton = Instance.new("TextButton", NotificationFrame)
YesButton.Size = UDim2.new(0.4, 0, 0.3, 0)
YesButton.Position = UDim2.new(0.1, 0, 0.65, 0)
YesButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
YesButton.Text = "Yes"
YesButton.TextScaled = true
YesButton.Font = Enum.Font.IndieFlower
YesButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local NoButton = Instance.new("TextButton", NotificationFrame)
NoButton.Size = UDim2.new(0.4, 0, 0.3, 0)
NoButton.Position = UDim2.new(0.5, 0, 0.65, 0)
NoButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
NoButton.Text = "No"
NoButton.TextScaled = true
NoButton.Font = Enum.Font.IndieFlower
NoButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local function showAimbotToggle()
    ToggleButton.Visible = true
end

local function decideTeamCheck(isEnabled)
    teamCheck = isEnabled
    teamCheckDecided = true
    NotificationFrame.Visible = false
    showAimbotToggle()
end

YesButton.MouseButton1Click:Connect(function()
    decideTeamCheck(true)
end)

NoButton.MouseButton1Click:Connect(function()
    decideTeamCheck(false)
end)

ToggleButton.MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    if aimbotEnabled then
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        ToggleButton.Text = "AIMBOT ON"
    else
        ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        ToggleButton.Text = "AIMBOT OFF"
        currentTarget = nil
    end
end)

local function isPlayerAlive(player)
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        return character.Humanoid.Health > 0
    end
    return false
end

local function getClosestPlayerInFOV()
    local nearest = nil
    local lastDistance = math.huge
    local playerMousePos = cam.ViewportSize / 2
    local localPlayer = players.LocalPlayer

    for _, player in pairs(players:GetPlayers()) do
        if player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) and isPlayerAlive(player) then
            local part = player.Character and player.Character:FindFirstChild(targetPart)
            if part then
                local screenPosition, isVisible = cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(screenPosition.X, screenPosition.Y) - playerMousePos).Magnitude

                if isVisible and distance < lastDistance and distance < fov then
                    lastDistance = distance
                    nearest = player
                end
            end
        end
    end
    return nearest
end

runService.RenderStepped:Connect(function()
    if aimbotEnabled then
        if currentTarget and isPlayerAlive(currentTarget) then
            local part = currentTarget.Character and currentTarget.Character:FindFirstChild(targetPart)
            if part then
                cam.CFrame = CFrame.new(cam.CFrame.Position, part.Position)
            end
        else
            currentTarget = getClosestPlayerInFOV() -- Only update target when the current one dies
        end
    end
end)

runService.RenderStepped:Connect(function()
    hue = hue + 0.01
    if hue >= 1 then hue = 0 end
    local color = Color3.fromHSV(hue, 1, 1)
    FOVring.Color = color
end)
