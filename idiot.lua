local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Welcome to idiot hub",
	Content = "kdor",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local Window = OrionLib:MakeWindow({Name = "idiot hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})

--Player Tab--

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddButton({
	Name = "fling all",
	Callback = function()
               print("Before the while loop")



local Targets = {"All"} -- "All", "Target Name", "Target name can be shortened"
 
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
 
local AllBool = falseasa
 
local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end
 
local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end
 
local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart
 
    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle
 
    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end
 
    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
 
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
 
        local SFBasePart = function(BasePart)
            local TimeToWait = 0.1
            local Time = tick()
            local Angle = 0
 
            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100
 
                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()
 
                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end
 
        workspace.FallenPartsDestroyHeight = 0/0
 
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
 
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
 
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error Occurred", "Target is missing everything", 5)
        end
 
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid
 
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end
 
if not Welcome then Message("Script by Denzo", "Kdit", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end
 
if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end
 
for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error Occurred", "Username Invalid", 5)
    end
end
local WhitelistedPlayers = {
    [123456789] = true, -- Replace with the actual UserId of whitelisted players
    [987654321] = true,
}

local function IsPlayerWhitelisted(player)
    local userId = player.UserId
    return WhitelistedPlayers[userId] or false
end

return IsPlayerWhitelisted
	end    
})

MainTab:AddButton({
	Name = "Crash server (Need btools)",
	Callback = function()
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
crashPercent.Size = 100

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
        crashPercent.Text = "Crash Ban " .. math.floor(tick / max * 100) .. "%"
    end
end)
  	end    
})

MaimTab:AddButton({
	Name = "Katana Scrip",
	Callback = function()
        local hook; hook = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if tostring(self) == "RemoteEvent" and method == "FireServer" then
        if args[1] == "2" and game.FindFirstChild(game.Players, args[2].Parent.Name) then
            args[2] = args[2].Parent.Head
            return hook(self, unpack(args))
        end
    end

    return hook(self, ...)
end)
  	end    
})

MainTab:AddButton({
	Name = "Rizz Script",
	Callback = function()
        local cloneref = clonereference or cloneref
local cache = {}
local Services = setmetatable({}, {
    __index = function(_, serviceName)
        local service = cache[serviceName]
        if not service then
            service = cloneref(game:GetService(serviceName))
            cache[serviceName] = service
        end
        return service
    end
})

local ReplicatedStorage, TextChatService = Services.ReplicatedStorage, Services.TextChatService
local Remote = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest or nil

local Packages = {
    Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))(),
    Lines = {"Want to come to my place and watch Family Guy?","I wish I was crossed-eyed so I could see you twice.","Are you Grass? because if you are, that's the only time I'd touch it.","I wish I was garbage so you would take me out one a week","Are you a parking ticket? Cause you got fine written all over you.","I have 206 bones in my body, wanna give me one?","Are you from Tennessee? Because you're the only 10 I see.","Are you sure you’re not tired? You’ve been running through my mind all day.","I’m not a photographer, but I can picture me and you together.","I’m lost. Can you give me directions to your heart?","Did it hurt? When you fell from heaven?","If I could rearrange the alphabet, I’d put “U” and “I” together.","Well, here I am. What are your other two wishes?","It’s a good thing I have my library card, because I am totally checking you out.","They say Disney World is the happiest place on Earth, but clearly they've never stood next to you.","Are you Siri? Because you autocomplete me.","You remind me of a magnet because you sure are attracting me over here.","Are you a loan? Because you've got my interest.","If you were a fruit, you’d be a fine-apple.","If you were a flower, you'd be a daaaaaamn-delion.","Is your name Google? Because you’re everything I’ve been searching for.","Did you do something to my eyes? Because I can’t keep them off you.","I'm pretty good at algebra...I can replace your X and you wouldn't need to figure out Y.","Can I borrow your phone? I need to call God and tell him I’ve found his missing angel.","My phone’s broken, it doesn’t have your number in it.","I’m no mathematician, but I’m pretty good with numbers. Tell you what, give me yours and watch what I can do with it.","I think there’s something wrong with my phone. Could you call it and see if it works?","I think your number will be safer in my phone than in your head.","Do you know CPR? Because you are taking my breath away!","You’re so beautiful that you made me forget my pickup line.","It’s a good thing I have my library card because I am totally checking you out.","I was blinded by your beauty; I’m going to need your name and phone number for insurance purposes.","I was wondering if you had an extra heart. Because mine was just stolen.","Is your name Google? Because you have everything I’ve been searching for.","Are you a bank loan? Because you got my interest.","Are you a time traveler? Cause I see you in my future!","Can I follow you where you’re going right now? Because my parents always told me to follow my dreams.","Is this the Hogwarts Express? Because it feels like you and I are headed somewhere magical.","Life without you is like a broken pencil… pointless.","Do you have a BandAid? I just scraped my knee falling for you.","Is this the Hogwarts Express? Because it feels like you and I are headed somewhere magical.","I must be a snowflake, because I've fallen for you.","🔮 I see me in your future.","Let’s play a game! If I win, you take me out. If you win, I take you out. 🏆","Is it just the WiFi? Or am I totally feeling a connection?","Are you a keyboard? Because you’re just my type.","You must be made of Copper and Tellurium, because you’re CuTe!","Do you drink Pepsi? Because you’re so-da-licious!","I swear someone stole the stars from the sky and put them in your eyes.","I was going to say something really sweet about you. But when I saw you, I became speechless.","Trust me, I’m not drunk. I’m just intoxicated by you.","Do you have a name or can I just call you mine?","Are you sure you’re not tired? Because you’ve been running through my mind all day.","Hi, how was heaven when you left it?","I must be in a museum, because you truly are a work of art.","Are you a dictionary? Cause you’re adding meaning to my life.","If you were a triangle, you’d be acute one!","You look so familiar. Didn’t we take a class together? I could’ve sworn we had chemistry.","If I had to rate you from 1 to 10, I’d give you a 9 because I’m the 1 you need.","Do you wanna grab a coffee? Because I like you a latte.","Are you French? Because Eiffel for you.","Do you like Nintendo? Because Wii would look good together.","If you were a flower you’d be a damnnnnnn-delion.","If I had a star for every time you brightened my day, I’d have a galaxy in my hand.","I thought happiness started with an H. Why does mine start with U?","Are you a banana? Because I find you apeeling.","Are you an alien? Because you just abducted my heart.","You dropped something… my jaw.","Forget Hydrogen. You’re my number 1 element.","Are you a compound of Barium and Beryllium? Because you’re a total BaBe.","You’ve got everything I’ve been searching for, and believe me — I’ve been looking a long time.","I was wondering if you’re an artist because you were so good at drawing me in.","Do you have a map? I just got lost in your eyes.","Are you an electrician? Because you’re definitely lighting up my day/night!","I always thought happiness started with an ‘h,’ but it turns out mine starts with ‘u.’","If you were a song, you’d be the best track on the album.","Your hand looks heavy — can I hold it for you?","I can’t tell if that was an earthquake, or if you just seriously rocked my world.","If beauty were time, you’d be eternity.","I don’t know which is prettier today — the weather, or your eyes.","I’m not usually religious, but when I saw you, I knew you were the answer to my prayers.","I’m not currently an organ donor, but I’d be happy to give you my heart.","I was going to say something really sweet about you, but when I saw you, I became speechless.","I’d say, ‘God bless you,’ but it looks like he already did.","There must be something wrong with my eyes—I can’t seem to take them off of you.","You must be a hell of a thief, because you managed to steal my heart from across the room.","When your parents made you, they were really just showing off.","I’m not a photographer, but I can picture me and you together.","Is there an airport nearby or is it my heart taking off?","Was your dad a boxer? Because damn, you’re a knockout!","I was wondering if you had an extra heart. Mine was just stolen.","Would you grab my arm, so I can tell my friends I’ve been touched by an angel?","Can I follow you home? Cause my parents always told me to follow my dreams.","Hello, I’m a thief, and I’m here to steal your heart.","If nothing lasts forever, will you be my nothing?","Was you father an alien? Because there’s nothing else like you on Earth!","Was your father a thief? ‘Cause someone stole the stars from the sky and put them in your eyes.","Are you my phone charger? Because without you, I’d die.","I must be in a museum, because you truly are a work of art.","You remind me of a magnet, because you sure are attracting me over here!","Four and four become eight, but you and I can be fate.","Hello! I guess you are looking for Mr. Right. Well, that’s me!","Do you like bad boys/girls? Because I’m really bad at this.","Mind if I tie your shoes? I’d hate to see you falling for anyone else.","My buddies bet me that I wouldn't be able to start a conversation with the most beautiful person here. How should we spend their money?","Are you an exam paper? Because I forget everything when I look at you...","I am not very good at holding conversations... so can I hold your hands instead?","I would take you to the movies, but they don’t allow snacks","You remind me of a dictionary in the way you add meaning to everything.","Are you HTTP? Because without you, I’m just ://","You’re so pretty that you made me forget my pick up line.","No wonder the sky is gray today. All the blue is in your eyes.","I want our love to be like the number Pi: irrational and never-ending.","I didn’t think wishing on those birthday candles would work, but here you are.","Is there an airport nearby, or was that just my heart taking off?","Do you play soccer? You look like a keeper.","Hey, can you help me get to a doctor? My heart keeps skipping a beat when I’m with you.","I might need crutches. You make my knees weak.","I should charge you rent for spending so much time in my head.","If nothing lasts forever, will you be my nothing?","Was your dad a boxer? Because you're a knockout!","Are you C₆H₁₂O₆? Because you’re sweet.","My pronouns are he/him but I could be all/yours.","I think you’ve got something in your eye. Oh never mind, it’s just a sparkle.","I wondered if you had an extra heart because mine seems to have been stolen.","If you’re here, who’s running heaven?","You're so sweet, you could put Hershey's out of business!","Are you my appendix? Because I have a funny feeling in my stomach that makes me feel like I should take you out.","You must be a high test score. Because I want to take you home and show you to my mother.","There is plenty of fish in the sea, but you’re the only one I’d like to catch.","Roses are red, my face is too, that only happens when I’m around you.","Is your name Google? Because you have everything I've been searching for.","You must be exhausted, because you've been running through my mind all day.","My mom told me not to talk to strangers, but I’ll make an exception for you.","I’d never play hide and seek with you because someone like you is impossible to find.","Are you the city of Ancient Rome? Because you’re on fire!","Know what's on the menu? Me-N-U.","Did the sun just come out, or did you just smile at me?","If you were meant to be a triangle, you would be ‘acute’ one.","I'm glad I remembered to bring my library card. 'Cause I am totally checking you out!","If your left leg is Thanksgiving and your right leg is Christmas, can I visit you in between the holidays?","I was feeling a little off today, but you've turned me on again","Can we take a picture together? I want to show my mom what my next girlfriend looks like","Can I have your picture so I can show Santa what I want for Christmas this year?","Your feet must be tired because you’ve been running through my mind all day","Hey, do you like bananas? Cause I wanna show you mine","You remind me of my pinkie toe you're small you're cute and i'll probably be bangn’ you on my coffee table later tonight"}
}


local Window = Packages.Rayfield:CreateWindow({
    Name = "idiot hub rizz",
    LoadingTitle = "idiot hub rizz",
    LoadingSubtitle = "by Denzo",
    ConfigurationSaving = { -- this dogshit that i dont have to use has to be here
       Enabled = false,
       FolderName = nil, 
       FileName = "Big Hub"
    },
    Discord = { -- this dogshit that i dont have to use has to be here
       Enabled = false,
       Invite = "noinvitelink", 
       RememberJoins = true 
    },
    KeySystem = false, 
    KeySettings = { -- this dogshit that i dont have to use has to be here
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", 
       SaveKey = true, 
       GrabKeyFromSite = false,
       Key = {"Hello"} 
    }
})

local Tabs = {
    Main = Window:CreateTab("Main", 4483362458)
}
local RizzlerModule = Tabs.Main:CreateSection("Rizzler")

Tabs.Main:CreateLabel(#Packages.Lines .. " lines are on your fingertips.")
Tabs.Main:CreateDropdown({
    Name = "Select Line",
    Options = Packages.Lines,
    CurrentOption = {"Select a line here!"},
    MultipleOptions = false,
    Flag = "Dropdown1",
    Callback = function(Option)
        Line = Option
    end
})

Tabs.Main:CreateButton({
    Name = "Say Line",
    Callback = function()
        if Remote then
            Remote:FireServer(Line, "All")
        else
            TargetChannel = TextChatService.TextChannels["RBXGeneral"]
            TargetChannel:SendAsync(Line)
        end
    end
})

Tabs.Main:CreateButton({
    Name = "Say Random Line",
    Callback = function()
        RandomLine = Packages.Lines[math.random(1, #Packages.Lines)]
        if Remote then
            Remote:FireServer(RandomLine, "All")
        else
            TargetChannel = TextChatService.TextChannels["RBXGeneral"]
            TargetChannel:SendAsync(RandomLine)
        end
    end
})
  	end    
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

SettingsTab:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

--Settings End--

OrionLib:Init() --UI Lib End
