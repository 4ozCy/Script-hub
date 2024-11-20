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
   Duration = 5,
   Image = 4483362458,
})

local Tab = Window:CreateTab("Main", 4483362458)

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

local Button = Tab:CreateButton({
   Name = "Shift-lock",
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))()
    end,
})
