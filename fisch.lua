local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "nozcy's hub | fisch (beta)",
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
   KeySystem = true,
   KeySettings = {
      Title = "nozcy's hub",
      Subtitle = "Key System",
      Note = "What is My Crush Name",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Nika", "nika"}
   }
})

local Tab = Window:CreateTab("Main", 4483362458)

local Toggle = Tab:CreateToggle({
   Name = "Farm",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      if Value then
      -- start farming
         task.spawn(function()
            local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
            while Toggle.CurrentValue and task.wait(0.1) do
               if Backpack:FindFirstChild(RodName) then
                  LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild(RodName))
               end
               if LocalPlayer.Character:FindFirstChild(RodName) and LocalPlayer.Character:FindFirstChild(RodName):FindFirstChild("bobber") then
                  local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
                  XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
                  XyzClone.Name = "Lure"
                  XyzClone.Text = "<font color='#ff4949'>Lure </font>: 0%"
                  repeat
                     pcall(function()
                        PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size = UDim2.new(1001, 0, 1001, 0)
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
                        game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
                     end)
                     XyzClone.Text = "<font color='#ff4949'>Lure </font>: "..tostring(ExportValue(tostring(LocalPlayer.Character:FindFirstChild(RodName).values.lure.Value), 2)).."%"
                     RunService.Heartbeat:Wait()
                  until not LocalPlayer.Character:FindFirstChild(RodName) or LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Toggle.CurrentValue
                  XyzClone.Text = "<font color='#ff4949'>FISHING!</font>"
                  delay(1, function()
                     XyzClone:Destroy()
                  end)
                  repeat
                     ReplicatedStorage.events.reelfinished:FireServer(1000000000000000000000000, true)
                     task.wait(0.1)
                  until not LocalPlayer.Character:FindFirstChild(RodName) or not LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Toggle.CurrentValue
               else
                  LocalPlayer.Character:FindFirstChild(RodName).events.cast:FireServer(1000000000000000000000000)
                  task.wait(0.1)
               end
            end
         end)
      end
   end,
})
