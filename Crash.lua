local runService = game:GetService("RunService")
local localPlayer = game:GetService("Players").LocalPlayer
local camera = workspace.CurrentCamera
local tick = 0
local tbl = {}
local max = 2500

local crashPercent = Drawing.new("Text")
crashPercent.Outline = true
crashPercent.Color = Color3.fromRGB(255, 255, 255)
crashPercent.Center = true
crashPercent.Visible = true
crashPercent.Transparency = 1
crashPercent.Font = Drawing.Fonts.Plex
crashPercent.Size = 50

runService.Heartbeat:Connect(function()
    if tick > max then
        for i, v in pairs(workspace:GetChildren()) do
            if v:IsA("Part") then
                tbl[#tbl + 1] = {
                    ["Part"] = v,
                    ["Anchored"] = false
                }
            end
        end
        localPlayer.Character["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer("SyncAnchor", tbl)
    else
        localPlayer.Character["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer("CreatePart", "Normal", CFrame.new(-3, 50, -70), workspace)
        crashPercent.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        tick += 1
        crashPercent.Text = "wait for it to load 100%:" .. math.floor(tick / max * 100) .. "%"
    end
end)
