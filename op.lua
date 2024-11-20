local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "nozcy's hub",
   Icon = 0,
   LoadingTitle = "booting this bad boy",
   LoadingSubtitle = "by: nozcy",
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
        warn("No available servers to hop to.")
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
   loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))()
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
                Image = 4483362458,
            })
        else
            for _, connection in pairs(getconnections(Players.LocalPlayer.Idled)) do
                connection:Disable()
            end
            Rayfield:Notify({
                Title = "nozcy's hub",
                Content = "Anti-AFK disabled",
                Duration = 5,
                Image = 4483362458,
            })
        end
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        if player and player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid then
                if Value then
                    humanoid.PlatformStand = true
                    player.Character:FindFirstChild("HumanoidRootPart").Anchored = true
                else
                    humanoid.PlatformStand = false
                    player.Character:FindFirstChild("HumanoidRootPart").Anchored = false
                end
            end
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

local MusicTab = Window:CreateTab("Music", "music")
local Section = Tab:CreateSection("Music")

local Dropdown = MusicTab:CreateDropdown({
    Name = "Music List",
    Options = {"Song 1", "Song 2", "Song 3", "Song 4"},
    CurrentOption = {"Song 1"},
    MultipleOptions = false,
    Flag = "Dropdown1",
    Callback = function(Options)
        local selectedSong = Options[1]
        local soundId
        
        if selectedSong == "Song 1" then
            soundId = "rbxassetid://1234567890"
        elseif selectedSong == "Song 2" then
            soundId = "rbxassetid://2345678901"
        elseif selectedSong == "Song 3" then
            soundId = "rbxassetid://3456789012"
        elseif selectedSong == "Song 4" then
            soundId = "rbxassetid://4567890123"
        end
        
        if sound then
            sound:Stop()
        end

        sound = Instance.new("Sound")
        sound.SoundId = soundId
        sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        sound:Play()
        
        Rayfield:Notify({
            Title = "Music Player",
            Content = "Now playing: " .. selectedSong,
            Duration = 5,
            Image = "music",
        })
    end,
})

local Toggle = MusicTab:CreateToggle({
    Name = "Play/Stop Music",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if sound then
            if Value then
                sound:Play()
            else
                sound:Stop()
            end
        end
    end,
})

local Slider = MusicTab:CreateSlider({
    Name = "Volume",
    Range = {1, 100},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 1,
    Flag = "Slider1",
    Callback = function(Value)
        if sound then
            sound.Volume = Value
        end
    end,
})

local Slider = MusicTab:CreateSlider({
    Name = "Pitch",
    Range = {0.1, 2},
    Increment = 0.1,
    Suffix = "x",
    CurrentValue = 1,
    Flag = "Slider2",
    Callback = function(Value)
        if sound then
            sound.PlaybackSpeed = Value
        end
    end,
})
