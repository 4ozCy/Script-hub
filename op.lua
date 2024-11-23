local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "nozcy's hub",
   Icon = 0,
   LoadingTitle = "booting this bad boy up",
   LoadingSubtitle = "shhhhhhhh",
   Theme = "Ocean",
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

local dropdown = Tab:CreateDropdown({
    Name = "Select Player to Teleport",
    Options = (function()
        local players = {}
        for _, player in ipairs(game.Players:GetPlayers()) do
            table.insert(players, player.Name)
        end
        return players
    end)(),
    CurrentOption = "",
    MultipleOptions = false,
    Flag = "PlayerDropdown",
    Callback = function(selectedPlayer)
    end,
})

game.Players.PlayerAdded:Connect(function()
    local players = {}
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(players, player.Name)
    end
    dropdown:UpdateOptions(players)
end)

game.Players.PlayerRemoving:Connect(function()
    local players = {}
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(players, player.Name)
    end
    dropdown:UpdateOptions(players)
end)

local Button = Tab:CreateButton({
    Name = "Teleport",
    Callback = function()
        local selectedPlayer = dropdown.CurrentOption
        local localPlayer = game.Players.LocalPlayer
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition = targetPlayer.Character.HumanoidRootPart.CFrame

            if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                localPlayer.Character.HumanoidRootPart.CFrame = targetPosition

                Rayfield:Notify({
                    Title = "Teleport Successful",
                    Content = "Teleported to " .. selectedPlayer,
                    Duration = 5,
                    Image = "circle-check",
                })
            else
                Rayfield:Notify({
                    Title = "Teleport Failed",
                    Content = "Your character is not loaded.",
                    Duration = 5,
                    Image = "circle-x",
                })
            end
        else
            Rayfield:Notify({
                Title = "Teleport Failed",
                Content = "Player not found or target has no character.",
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

local Section = Tab:CreateSection("Music")

local Toggle = Tab:CreateToggle({
    Name = "Play Random Music",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        local musicList = {
            ["EHYUH!!"] = "rbxassetid://16190782181",
            ["Deja Vu"] = "rbxassetid://6781116057",
            ["Sinistra"] = "rbxassetid://15689443663",
            ["Chipi Chipi Chapa Chapa"] = "rbxassetid://16190783444",
        }

        if sound then
            sound:Destroy()
            sound = nil
        end

        if Value then
            local musicNames = {}
            for name in pairs(musicList) do
                table.insert(musicNames, name)
            end

            local randomIndex = math.random(1, #musicNames)
            local selectedSong = musicNames[randomIndex]
            local soundId = musicList[selectedSong]
            
            local sound
            sound = Instance.new("Sound")
            sound.SoundId = soundId
            sound.Volume = 1
            sound.PlaybackSpeed = 1
            sound.Parent = game:GetService("SoundService")
            sound:Play()

            Rayfield:Notify({
                Title = "Music played",
                Content = "Now playing: " .. selectedSong,
                Duration = 5,
                Image = "toggle-right",
            })
        else
            Rayfield:Notify({
                Title = "Music Stopped",
                Content = "Now Stop playing: " .. selectedSong,
                Duration = 5,
                Image = "toggle-left",
            })
        end
    end,
})
