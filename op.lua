local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "nozcy's hub",
   Icon = 0,
   LoadingTitle = "booting this bad boy up",
   LoadingSubtitle = "shhhhhhhh",
   Theme = "Default",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "key",
      Subtitle = "Key System",
      Note = "text",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"text"}
   }
})

Rayfield:Notify({
   Title = "nozcy's hub",
   Content = "Version 1.0",
   Duration = 4,
   Image = 4483362458,
})

local Tab = Window:CreateTab("Main", 4483362458)
local Section = Tab:CreateSection("Main")

local TeleportInput = Tab:CreateInput({
    Name = "Enter Player Username",
    CurrentValue = "",
    PlaceholderText = "Username",
    RemoveTextAfterFocusLost = true,
    Flag = "TeleportInput",
    Callback = function(enteredText)
        selectedPlayer = enteredText
    end,
})

local TeleportButton = Tab:CreateButton({
    Name = "Teleport",
    Callback = function()
        if selectedPlayer then
            local foundPlayer = nil
            local enteredTextLower = string.lower(selectedPlayer)

            -- Search for a matching player by partial username
            for _, player in ipairs(game.Players:GetPlayers()) do
                if string.find(string.lower(player.Name), enteredTextLower) or string.find(string.lower(player.DisplayName), enteredTextLower) then
                    foundPlayer = player
                    break
                end
            end

            if foundPlayer and foundPlayer.Character and foundPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetCFrame = foundPlayer.Character.HumanoidRootPart.CFrame
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(targetCFrame)

                Rayfield:Notify({
                    Title = "Teleport Success",
                    Content = "Teleported to " .. foundPlayer.DisplayName .. " | @" .. foundPlayer.Name,
                    Duration = 5,
                    Image = "circle-check",
                })
            else
                Rayfield:Notify({
                    Title = "Teleport Error",
                    Content = "No player found matching '" .. selectedPlayer .. "'",
                    Duration = 5,
                    Image = "circle-x",
                })
            end
        else
            Rayfield:Notify({
                Title = "Teleport Error",
                Content = "No username entered.",
                Duration = 5,
                Image = "circle-x",
            })
        end
    end,
})

local Button = Tab:CreateButton({
   Name = "aimbot & esp",
   Callback = function()
local function get(url)
    local script = game:HttpGet(url, true)
    loadstring(script)()
end

get("https://raw.githubusercontent.com/4ozCy/Script-hub/main/esp.lua")
get("https://raw.githubusercontent.com/4ozCy/Script-hub/main/aimbot.lua")
   end,
})

local Button = Tab:CreateButton({
   Name = "Server Hop",
   Callback = function()
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function getServerList()
    local servers = {}
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    end)
    if success then
        for _, server in pairs(result.data) do
            if server.playing < server.maxPlayers then
                table.insert(servers, {id = server.id, players = server.playing})
            end
        end
        table.sort(servers, function(a, b) return a.players < b.players end)
    end
    return servers
end

local function serverHop()
    local servers = getServerList()
    if #servers > 0 then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[1].id, LocalPlayer)
    else
        Rayfield:Notify({
   Title = "nozcy's hub",
   Content = "no server available",
   Duration = 4,
   Image = "circle-x",
})
    end
end
         
serverHop()
   end,
})

local Button = Tab:CreateButton({
   Name = "low gfx",
   Callback = function()
   for i,v in next, (workspace:GetDescendants()) do
 if v:IsA("Part") then v.Material = Enum.Material.SmoothPlastic
 end
      end
   end,
})

local Button = Tab:CreateButton({
   Name = "Shift-lock",
   Callback = function()
local ShiftLockScreenGui = Instance.new("ScreenGui")
local ShiftLockButton = Instance.new("ImageButton")
local ShiftlockCursor = Instance.new("ImageLabel")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ContextActionService = game:GetService("ContextActionService")
local Player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local States = {
    Off = "rbxasset://textures/ui/mouseLock_off@2x.png",
    On = "rbxasset://textures/ui/mouseLock_on@2x.png",
    Lock = "rbxasset://textures/MouseLockedCursor.png",
    Lock2 = "rbxasset://SystemCursors/Cross"
}
local MaxLength = 900000
local EnabledOffset = CFrame.new(1.7, 0, 0)
local DisabledOffset = CFrame.new(-1.7, 0, 0)
local Active

ShiftLockScreenGui.Name = "Shiftlock (CoreGui)"
ShiftLockScreenGui.Parent = CoreGui
ShiftLockScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ShiftLockScreenGui.ResetOnSpawn = false

ShiftLockButton.Parent = ShiftLockScreenGui
ShiftLockButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShiftLockButton.BackgroundTransparency = 1.000
ShiftLockButton.Position = UDim2.new(0.7, 0, 0.75, 0)
ShiftLockButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
ShiftLockButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ShiftLockButton.Image = States.Off

ShiftlockCursor.Name = "Shiftlock Cursor"
ShiftlockCursor.Parent = ShiftLockScreenGui
ShiftlockCursor.Image = States.Lock
ShiftlockCursor.Size = UDim2.new(0.03, 0, 0.03, 0)
ShiftlockCursor.Position = UDim2.new(0.5, 0, 0.5, 0)
ShiftlockCursor.AnchorPoint = Vector2.new(0.5, 0.5)
ShiftlockCursor.SizeConstraint = Enum.SizeConstraint.RelativeXX
ShiftlockCursor.BackgroundTransparency = 1
ShiftlockCursor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ShiftlockCursor.Visible = false

ShiftLockButton.MouseButton1Click:Connect(
    function()
        if not Active then
            Active =
                RunService.RenderStepped:Connect(
                function()
                    Player.Character.Humanoid.AutoRotate = false
                    ShiftLockButton.Image = States.On
                    ShiftlockCursor.Visible = true
                    Player.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        Player.Character.HumanoidRootPart.Position,
                        Vector3.new(
                            workspace.CurrentCamera.CFrame.LookVector.X * MaxLength,
                            Player.Character.HumanoidRootPart.Position.Y,
                            workspace.CurrentCamera.CFrame.LookVector.Z * MaxLength
                        )
                    )
                    workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * EnabledOffset
                    workspace.CurrentCamera.Focus =
                        CFrame.fromMatrix(
                        workspace.CurrentCamera.Focus.Position,
                        workspace.CurrentCamera.CFrame.RightVector,
                        workspace.CurrentCamera.CFrame.UpVector
                    ) * EnabledOffset
                end
            )
        else
            Player.Character.Humanoid.AutoRotate = true
            ShiftLockButton.Image = States.Off
            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * DisabledOffset
            ShiftlockCursor.Visible = false
            pcall(
                function()
                    Active:Disconnect()
                    Active = nil
                end
            )
        end
    end
)

local ShiftLockAction = ContextActionService:BindAction("Shift Lock", ShiftLock, false, "On")
ContextActionService:SetPosition("Shift Lock", UDim2.new(0.8, 0, 0.8, 0))

return {} and ShiftLockAction
         
   end,
})

local Toggle = Tab:CreateToggle({
    Name = "anti-afk",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local VirtualUser = game:GetService("VirtualUser")

        if Value then
            Players.LocalPlayer.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
            Rayfield:Notify({
                Title = "nozcy's hub",
                Content = "Anti-AFK enabled",
                Duration = 5,
                Image = "toggle-right",
            })
        else
            for _, connection in pairs(getconnections(Players.LocalPlayer.Idled)) do
                connection:Disable()
            end
            Rayfield:Notify({
                Title = "nozcy's hub",
                Content = "Anti-AFK disabled",
                Duration = 5,
                Image = "toggle-left",
            })
        end
    end,
})

local Slider = Tab:CreateSlider({
    Name = "Speed",
    Range = {16, 1000},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1",
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = Value
        end
    end,
})

local Slider = Tab:CreateSlider({
    Name = "Jump Power",
    Range = {50, 2000},
    Increment = 1,
    Suffix = "Jump Power",
    CurrentValue = 50,
    Flag = "Slider3",
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.JumpPower = Value
        end
    end,
})
