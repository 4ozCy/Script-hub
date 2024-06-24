-- Gui to Lua
-- Version: 3.2

-- Instances:

local UESP1 = Instance.new("ScreenGui")
local ESPFRAME = Instance.new("Frame")
local Frame = Instance.new("Frame")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local ESPSTUFF = Instance.new("Folder")
local EXAMPLEGLOW = Instance.new("ImageLabel")
local Tracer = Instance.new("Frame")
local BOXESP = Instance.new("Frame")
local BOXESP_2 = Instance.new("Frame")
local BOXESP_3 = Instance.new("Frame")
local BOXESP_4 = Instance.new("Frame")
local Two = Instance.new("TextLabel")
local One = Instance.new("TextLabel")
local Three = Instance.new("TextLabel")
local Dup = Instance.new("TextLabel")
local TextLabel = Instance.new("ImageLabel")
local ESPS = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local NAMESP = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local HEALTHESP = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Description_2 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local DistanceESP = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Description_3 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local BOXESP_5 = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local Description_4 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Outlineglow = Instance.new("Frame")
local Title_5 = Instance.new("TextLabel")
local Description_5 = Instance.new("TextLabel")
local TextButton_5 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TracerESP = Instance.new("Frame")
local Title_6 = Instance.new("TextLabel")
local Description_6 = Instance.new("TextLabel")
local TextButton_6 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TeamColor = Instance.new("Frame")
local Title_7 = Instance.new("TextLabel")
local Description_7 = Instance.new("TextLabel")
local TextButton_7 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local AllyESP = Instance.new("Frame")
local Title_8 = Instance.new("TextLabel")
local Description_8 = Instance.new("TextLabel")
local TextButton_8 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Settingsbuttopn = Instance.new("TextButton")
local SettingFrame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local ESPColor = Instance.new("TextLabel")
local ESPCOLOR = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Framae = Instance.new("Frame")
local colorpi = Instance.new("Frame")
local RGB = Instance.new("ImageLabel")
local Marker = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local UICorner_11 = Instance.new("UICorner")
local Preview = Instance.new("ImageLabel")
local OpenClose = Instance.new("Frame")
local BUTTONDESIGN = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Title_9 = Instance.new("TextLabel")
local TextButton_9 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local OpenCloseMob = Instance.new("Frame")
local BUTTONDESIGN_2 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local Title_10 = Instance.new("TextLabel")
local TextButton_10 = Instance.new("ImageLabel")
local o = Instance.new("Folder")
local ColorSwitch = Instance.new("ImageLabel")
local LTXOPEN = Instance.new("ImageButton")

--Properties:

UESP1.Name = "UESP1"
UESP1.Parent = game.CoreGui
UESP1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ESPFRAME.Name = "ESPFRAME"
ESPFRAME.Parent = UESP1
ESPFRAME.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
ESPFRAME.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPFRAME.BorderSizePixel = 0
ESPFRAME.Position = UDim2.new(0.314642459, 0, 0.335503459, 0)
ESPFRAME.Size = UDim2.new(0, 436, 0, 266)

Frame.Parent = ESPFRAME
Frame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.497706413, 0, 0, 0)
Frame.Size = UDim2.new(0, 2, 0, 266)

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = ESPFRAME
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

ESPSTUFF.Name = "ESPSTUFF"
ESPSTUFF.Parent = ESPFRAME

EXAMPLEGLOW.Name = "EXAMPLE/GLOW"
EXAMPLEGLOW.Parent = ESPSTUFF
EXAMPLEGLOW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EXAMPLEGLOW.BackgroundTransparency = 1.000
EXAMPLEGLOW.BorderColor3 = Color3.fromRGB(0, 0, 0)
EXAMPLEGLOW.BorderSizePixel = 0
EXAMPLEGLOW.Position = UDim2.new(0.293578118, 0, -0.0488721803, 0)
EXAMPLEGLOW.Size = UDim2.new(0, 387, 0, 292)
EXAMPLEGLOW.Image = "http://www.roblox.com/asset/?id=15586629590"

Tracer.Name = "Tracer"
Tracer.Parent = ESPSTUFF
Tracer.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
Tracer.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tracer.BorderSizePixel = 0
Tracer.Position = UDim2.new(0.733944952, 0, 0.590225577, 0)
Tracer.Size = UDim2.new(0, 2, 0, 98)
Tracer.Visible = false

BOXESP.Name = "BOXESP"
BOXESP.Parent = ESPSTUFF
BOXESP.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
BOXESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
BOXESP.BorderSizePixel = 0
BOXESP.Position = UDim2.new(0.905963302, 0, 0.150375932, 0)
BOXESP.Size = UDim2.new(0, 2, 0, 186)
BOXESP.Visible = false

BOXESP_2.Name = "BOXESP"
BOXESP_2.Parent = ESPSTUFF
BOXESP_2.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
BOXESP_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
BOXESP_2.BorderSizePixel = 0
BOXESP_2.Position = UDim2.new(0.568807364, 0, 0.842105269, 0)
BOXESP_2.Size = UDim2.new(0, 147, 0, 2)
BOXESP_2.Visible = false

BOXESP_3.Name = "BOXESP"
BOXESP_3.Parent = ESPSTUFF
BOXESP_3.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
BOXESP_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
BOXESP_3.BorderSizePixel = 0
BOXESP_3.Position = UDim2.new(0.56422019, 0, 0.150375932, 0)
BOXESP_3.Size = UDim2.new(0, 2, 0, 186)
BOXESP_3.Visible = false

BOXESP_4.Name = "BOXESP"
BOXESP_4.Parent = ESPSTUFF
BOXESP_4.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
BOXESP_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
BOXESP_4.BorderSizePixel = 0
BOXESP_4.Position = UDim2.new(0.568807364, 0, 0.150375932, 0)
BOXESP_4.Size = UDim2.new(0, 147, 0, 2)
BOXESP_4.Visible = false

Two.Name = "Two"
Two.Parent = ESPSTUFF
Two.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Two.BackgroundTransparency = 1.000
Two.BorderColor3 = Color3.fromRGB(0, 0, 0)
Two.BorderSizePixel = 0
Two.Position = UDim2.new(0.678899109, 0, 0.176717654, 0)
Two.Size = UDim2.new(0, 51, 0, 14)
Two.Visible = false
Two.Font = Enum.Font.SourceSansSemibold
Two.Text = "Health"
Two.TextColor3 = Color3.fromRGB(255, 255, 255)
Two.TextSize = 14.000

One.Name = "One"
One.Parent = ESPSTUFF
One.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
One.BackgroundTransparency = 1.000
One.BorderColor3 = Color3.fromRGB(0, 0, 0)
One.BorderSizePixel = 0
One.Position = UDim2.new(0.568807364, 0, 0.176717654, 0)
One.Size = UDim2.new(0, 51, 0, 14)
One.Visible = false
One.Font = Enum.Font.SourceSansSemibold
One.Text = "Name"
One.TextColor3 = Color3.fromRGB(255, 255, 255)
One.TextSize = 14.000

Three.Name = "Three"
Three.Parent = ESPSTUFF
Three.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Three.BackgroundTransparency = 1.000
Three.BorderColor3 = Color3.fromRGB(0, 0, 0)
Three.BorderSizePixel = 0
Three.Position = UDim2.new(0.788990855, 0, 0.176717654, 0)
Three.Size = UDim2.new(0, 51, 0, 14)
Three.Visible = false
Three.Font = Enum.Font.SourceSansSemibold
Three.Text = "Distance"
Three.TextColor3 = Color3.fromRGB(255, 255, 255)
Three.TextSize = 14.000

Dup.Name = "Dup"
Dup.Parent = ESPSTUFF
Dup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dup.BackgroundTransparency = 1.000
Dup.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dup.BorderSizePixel = 0
Dup.Position = UDim2.new(0.678899109, 0, 0.176717654, 0)
Dup.Size = UDim2.new(0, 51, 0, 14)
Dup.Font = Enum.Font.SourceSansSemibold
Dup.Text = ""
Dup.TextColor3 = Color3.fromRGB(255, 255, 255)
Dup.TextSize = 14.000

TextLabel.Name = "TextLabel"
TextLabel.Parent = ESPFRAME
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.112385318, 0, 0.0263157897, 0)
TextLabel.Size = UDim2.new(0, 119, 0, 33)
TextLabel.Image = "http://www.roblox.com/asset/?id="

ESPS.Name = "ESPS"
ESPS.Parent = ESPFRAME
ESPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPS.BackgroundTransparency = 1.000
ESPS.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPS.BorderSizePixel = 0
ESPS.Position = UDim2.new(0.00158271438, 0, 0.180477053, 0)
ESPS.Selectable = false
ESPS.Size = UDim2.new(0, 216, 0, 217)
ESPS.CanvasSize = UDim2.new(0, 0, 1, 168)
ESPS.ScrollBarThickness = 2

UIListLayout.Parent = ESPS
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

NAMESP.Name = "NAMESP"
NAMESP.Parent = ESPS
NAMESP.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
NAMESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
NAMESP.BorderSizePixel = 0
NAMESP.Position = UDim2.new(0.00255471678, 0, 0, 0)
NAMESP.Size = UDim2.new(0, 217, 0, 54)

Title.Name = "Title"
Title.Parent = NAMESP
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title.Size = UDim2.new(0, 146, 0, 12)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Name ESP"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Description.Name = "Description"
Description.Parent = NAMESP
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description.BorderSizePixel = 0
Description.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description.Size = UDim2.new(0, 165, 0, 25)
Description.Font = Enum.Font.SourceSans
Description.Text = "Shows players name above their head"
Description.TextColor3 = Color3.fromRGB(255, 255, 255)
Description.TextSize = 12.000
Description.TextWrapped = true
Description.TextXAlignment = Enum.TextXAlignment.Left
Description.TextYAlignment = Enum.TextYAlignment.Top

TextButton.Parent = NAMESP
TextButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton.Size = UDim2.new(0, 20, 0, 20)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextButton

HEALTHESP.Name = "HEALTHESP"
HEALTHESP.Parent = ESPS
HEALTHESP.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HEALTHESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
HEALTHESP.BorderSizePixel = 0
HEALTHESP.Position = UDim2.new(0.00255471678, 0, 0, 0)
HEALTHESP.Size = UDim2.new(0, 217, 0, 54)

Title_2.Name = "Title"
Title_2.Parent = HEALTHESP
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title_2.Size = UDim2.new(0, 146, 0, 12)
Title_2.Font = Enum.Font.SourceSansBold
Title_2.Text = "Health ESP"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000
Title_2.TextXAlignment = Enum.TextXAlignment.Left

Description_2.Name = "Description"
Description_2.Parent = HEALTHESP
Description_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_2.BackgroundTransparency = 1.000
Description_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_2.BorderSizePixel = 0
Description_2.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description_2.Size = UDim2.new(0, 165, 0, 25)
Description_2.Font = Enum.Font.SourceSans
Description_2.Text = "Shows players healths above their head"
Description_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_2.TextSize = 12.000
Description_2.TextWrapped = true
Description_2.TextXAlignment = Enum.TextXAlignment.Left
Description_2.TextYAlignment = Enum.TextYAlignment.Top

TextButton_2.Parent = HEALTHESP
TextButton_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton_2.Size = UDim2.new(0, 20, 0, 20)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = TextButton_2

DistanceESP.Name = "DistanceESP"
DistanceESP.Parent = ESPS
DistanceESP.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
DistanceESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
DistanceESP.BorderSizePixel = 0
DistanceESP.Position = UDim2.new(0.00255471678, 0, 0, 0)
DistanceESP.Size = UDim2.new(0, 217, 0, 54)

Title_3.Name = "Title"
Title_3.Parent = DistanceESP
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title_3.Size = UDim2.new(0, 146, 0, 12)
Title_3.Font = Enum.Font.SourceSansBold
Title_3.Text = "Distance ESP"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14.000
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Description_3.Name = "Description"
Description_3.Parent = DistanceESP
Description_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_3.BackgroundTransparency = 1.000
Description_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_3.BorderSizePixel = 0
Description_3.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description_3.Size = UDim2.new(0, 165, 0, 25)
Description_3.Font = Enum.Font.SourceSans
Description_3.Text = "Shows how far each players are from you above their head"
Description_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_3.TextSize = 12.000
Description_3.TextWrapped = true
Description_3.TextXAlignment = Enum.TextXAlignment.Left
Description_3.TextYAlignment = Enum.TextYAlignment.Top

TextButton_3.Parent = DistanceESP
TextButton_3.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton_3.Size = UDim2.new(0, 20, 0, 20)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = ""
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = TextButton_3

BOXESP_5.Name = "BOXESP"
BOXESP_5.Parent = ESPS
BOXESP_5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
BOXESP_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
BOXESP_5.BorderSizePixel = 0
BOXESP_5.Position = UDim2.new(0.00255471678, 0, 0, 0)
BOXESP_5.Size = UDim2.new(0, 217, 0, 54)

Title_4.Name = "Title"
Title_4.Parent = BOXESP_5
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title_4.Size = UDim2.new(0, 146, 0, 12)
Title_4.Font = Enum.Font.SourceSansBold
Title_4.Text = "Box ESP"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 14.000
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Description_4.Name = "Description"
Description_4.Parent = BOXESP_5
Description_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_4.BackgroundTransparency = 1.000
Description_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_4.BorderSizePixel = 0
Description_4.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description_4.Size = UDim2.new(0, 165, 0, 25)
Description_4.Font = Enum.Font.SourceSans
Description_4.Text = "Puts a box around the character "
Description_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_4.TextSize = 12.000
Description_4.TextWrapped = true
Description_4.TextXAlignment = Enum.TextXAlignment.Left
Description_4.TextYAlignment = Enum.TextYAlignment.Top

TextButton_4.Parent = BOXESP_5
TextButton_4.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton_4.Size = UDim2.new(0, 20, 0, 20)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = ""
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = TextButton_4

Outlineglow.Name = "Outline / glow"
Outlineglow.Parent = ESPS
Outlineglow.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Outlineglow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Outlineglow.BorderSizePixel = 0
Outlineglow.Position = UDim2.new(0.00255471678, 0, 0, 0)
Outlineglow.Size = UDim2.new(0, 217, 0, 54)

Title_5.Name = "Title"
Title_5.Parent = Outlineglow
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_5.BorderSizePixel = 0
Title_5.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title_5.Size = UDim2.new(0, 146, 0, 12)
Title_5.Font = Enum.Font.SourceSansBold
Title_5.Text = "Outline/Glow ESP"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextSize = 14.000
Title_5.TextXAlignment = Enum.TextXAlignment.Left

Description_5.Name = "Description"
Description_5.Parent = Outlineglow
Description_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_5.BackgroundTransparency = 1.000
Description_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_5.BorderSizePixel = 0
Description_5.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description_5.Size = UDim2.new(0, 165, 0, 25)
Description_5.Font = Enum.Font.SourceSans
Description_5.Text = "Puts a glow and outline each player to see them clearly"
Description_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_5.TextSize = 12.000
Description_5.TextWrapped = true
Description_5.TextXAlignment = Enum.TextXAlignment.Left
Description_5.TextYAlignment = Enum.TextYAlignment.Top

TextButton_5.Parent = Outlineglow
TextButton_5.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton_5.Size = UDim2.new(0, 20, 0, 20)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = ""
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = TextButton_5

TracerESP.Name = "TracerESP"
TracerESP.Parent = ESPS
TracerESP.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TracerESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
TracerESP.BorderSizePixel = 0
TracerESP.Position = UDim2.new(0.00255471678, 0, 0, 0)
TracerESP.Size = UDim2.new(0, 217, 0, 54)

Title_6.Name = "Title"
Title_6.Parent = TracerESP
Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_6.BackgroundTransparency = 1.000
Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_6.BorderSizePixel = 0
Title_6.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title_6.Size = UDim2.new(0, 146, 0, 12)
Title_6.Font = Enum.Font.SourceSansBold
Title_6.Text = "Tracer ESP"
Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_6.TextSize = 14.000
Title_6.TextXAlignment = Enum.TextXAlignment.Left

Description_6.Name = "Description"
Description_6.Parent = TracerESP
Description_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_6.BackgroundTransparency = 1.000
Description_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_6.BorderSizePixel = 0
Description_6.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description_6.Size = UDim2.new(0, 165, 0, 25)
Description_6.Font = Enum.Font.SourceSans
Description_6.Text = "A line from your character to theres to see where they are"
Description_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_6.TextSize = 12.000
Description_6.TextWrapped = true
Description_6.TextXAlignment = Enum.TextXAlignment.Left
Description_6.TextYAlignment = Enum.TextYAlignment.Top

TextButton_6.Parent = TracerESP
TextButton_6.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton_6.Size = UDim2.new(0, 20, 0, 20)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = ""
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 14.000

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = TextButton_6

TeamColor.Name = "TeamColor"
TeamColor.Parent = ESPS
TeamColor.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TeamColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamColor.BorderSizePixel = 0
TeamColor.Position = UDim2.new(0.00255471678, 0, 0, 0)
TeamColor.Size = UDim2.new(0, 217, 0, 54)

Title_7.Name = "Title"
Title_7.Parent = TeamColor
Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_7.BackgroundTransparency = 1.000
Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_7.BorderSizePixel = 0
Title_7.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title_7.Size = UDim2.new(0, 146, 0, 12)
Title_7.Font = Enum.Font.SourceSansBold
Title_7.Text = "Team Color ESP"
Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_7.TextSize = 14.000
Title_7.TextXAlignment = Enum.TextXAlignment.Left

Description_7.Name = "Description"
Description_7.Parent = TeamColor
Description_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_7.BackgroundTransparency = 1.000
Description_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_7.BorderSizePixel = 0
Description_7.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description_7.Size = UDim2.new(0, 165, 0, 25)
Description_7.Font = Enum.Font.SourceSans
Description_7.Text = "Gives each glow/tracers different colors depending on their team"
Description_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_7.TextSize = 12.000
Description_7.TextWrapped = true
Description_7.TextXAlignment = Enum.TextXAlignment.Left
Description_7.TextYAlignment = Enum.TextYAlignment.Top

TextButton_7.Parent = TeamColor
TextButton_7.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton_7.Size = UDim2.new(0, 20, 0, 20)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = ""
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextSize = 14.000

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = TextButton_7

AllyESP.Name = "AllyESP"
AllyESP.Parent = ESPS
AllyESP.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
AllyESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
AllyESP.BorderSizePixel = 0
AllyESP.Position = UDim2.new(0.00255471678, 0, 0, 0)
AllyESP.Size = UDim2.new(0, 217, 0, 54)

Title_8.Name = "Title"
Title_8.Parent = AllyESP
Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_8.BackgroundTransparency = 1.000
Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_8.BorderSizePixel = 0
Title_8.Position = UDim2.new(0.0441988967, 0, 0.130989924, 0)
Title_8.Size = UDim2.new(0, 146, 0, 12)
Title_8.Font = Enum.Font.SourceSansBold
Title_8.Text = "Hide Team ESP"
Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_8.TextSize = 14.000
Title_8.TextXAlignment = Enum.TextXAlignment.Left

Description_8.Name = "Description"
Description_8.Parent = AllyESP
Description_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_8.BackgroundTransparency = 1.000
Description_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description_8.BorderSizePixel = 0
Description_8.Position = UDim2.new(0.0441990159, 0, 0.449419945, 0)
Description_8.Size = UDim2.new(0, 165, 0, 29)
Description_8.Font = Enum.Font.SourceSans
Description_8.Text = "Remove ESP from players who is in your team, to only show enemies"
Description_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_8.TextSize = 12.000
Description_8.TextWrapped = true
Description_8.TextXAlignment = Enum.TextXAlignment.Left
Description_8.TextYAlignment = Enum.TextYAlignment.Top

TextButton_8.Parent = AllyESP
TextButton_8.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.BorderSizePixel = 0
TextButton_8.Position = UDim2.new(0.851000011, 0, 0.314814806, 0)
TextButton_8.Size = UDim2.new(0, 20, 0, 20)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = ""
TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.TextSize = 14.000

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = TextButton_8

Settingsbuttopn.Name = "Settingsbuttopn"
Settingsbuttopn.Parent = ESPFRAME
Settingsbuttopn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settingsbuttopn.BackgroundTransparency = 1.000
Settingsbuttopn.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settingsbuttopn.BorderSizePixel = 0
Settingsbuttopn.Position = UDim2.new(0.69266057, 0, 0.872180462, 0)
Settingsbuttopn.Size = UDim2.new(0, 124, 0, 29)
Settingsbuttopn.Font = Enum.Font.FredokaOne
Settingsbuttopn.Text = "Settings"
Settingsbuttopn.TextColor3 = Color3.fromRGB(255, 255, 255)
Settingsbuttopn.TextSize = 14.000
Settingsbuttopn.TextXAlignment = Enum.TextXAlignment.Right

SettingFrame.Name = "SettingFrame"
SettingFrame.Parent = ESPFRAME
SettingFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
SettingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingFrame.BorderSizePixel = 0
SettingFrame.Position = UDim2.new(0.00158271438, 0, 0, 0)
SettingFrame.Size = UDim2.new(0, 216, 0, 264)
SettingFrame.Visible = false

title.Name = "title"
title.Parent = SettingFrame
title.BackgroundColor3 = Color3.fromRGB(255, 137, 53)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(-0.00319473841, 0, 0.0400807932, 0)
title.Size = UDim2.new(0, 216, 0, 12)
title.Font = Enum.Font.SourceSansBold
title.Text = "Settings"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20.000

ESPColor.Name = "ESP Color"
ESPColor.Parent = SettingFrame
ESPColor.BackgroundColor3 = Color3.fromRGB(255, 137, 53)
ESPColor.BackgroundTransparency = 1.000
ESPColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPColor.BorderSizePixel = 0
ESPColor.Position = UDim2.new(-0.00319473841, 0, 0.180232301, 0)
ESPColor.Size = UDim2.new(0, 128, 0, 12)
ESPColor.Font = Enum.Font.SourceSansBold
ESPColor.Text = "   ESP Color :"
ESPColor.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPColor.TextSize = 20.000
ESPColor.TextXAlignment = Enum.TextXAlignment.Left

ESPCOLOR.Name = "ESPCOLOR"
ESPCOLOR.Parent = SettingFrame
ESPCOLOR.BackgroundColor3 = Color3.fromRGB(0, 17, 255)
ESPCOLOR.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPCOLOR.BorderSizePixel = 0
ESPCOLOR.Position = UDim2.new(0.44907406, 0, 0.172656432, 0)
ESPCOLOR.Size = UDim2.new(0, 107, 0, 19)
ESPCOLOR.Font = Enum.Font.SourceSans
ESPCOLOR.Text = ""
ESPCOLOR.TextColor3 = Color3.fromRGB(0, 0, 0)
ESPCOLOR.TextSize = 14.000

UICorner_9.CornerRadius = UDim.new(0, 20)
UICorner_9.Parent = ESPCOLOR

Framae.Name = "Framae"
Framae.Parent = SettingFrame
Framae.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Framae.BorderColor3 = Color3.fromRGB(0, 0, 0)
Framae.BorderSizePixel = 0
Framae.Position = UDim2.new(-0.94853127, 0, 0, 0)
Framae.Size = UDim2.new(0, 214, 0, 102)
Framae.Visible = false

colorpi.Name = "colorpi"
colorpi.Parent = SettingFrame
colorpi.AnchorPoint = Vector2.new(0.5, 0.5)
colorpi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
colorpi.BackgroundTransparency = 1.000
colorpi.Position = UDim2.new(-0.818817258, 0, 0.264211237, 0)
colorpi.Size = UDim2.new(0.333502024, 0, 0.453531593, 0)
colorpi.SizeConstraint = Enum.SizeConstraint.RelativeXX
colorpi.Visible = false

RGB.Name = "RGB"
RGB.Parent = colorpi
RGB.AnchorPoint = Vector2.new(0.5, 0)
RGB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RGB.BorderColor3 = Color3.fromRGB(40, 40, 40)
RGB.BorderSizePixel = 0
RGB.Position = UDim2.new(1.59231436, 0, 0.0817380846, 0)
RGB.Size = UDim2.new(2.69343495, 0, 0.433164179, 0)
RGB.ZIndex = 4
RGB.Image = "rbxassetid://1433361550"
RGB.SliceCenter = Rect.new(10, 10, 90, 90)

Marker.Name = "Marker"
Marker.Parent = RGB
Marker.AnchorPoint = Vector2.new(0.5, 0.5)
Marker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Marker.BorderColor3 = Color3.fromRGB(0, 0, 0)
Marker.BorderSizePixel = 2
Marker.Position = UDim2.new(0.5, 0, 1, 0)
Marker.Size = UDim2.new(0, 4, 0, 4)
Marker.ZIndex = 5

UICorner_10.Parent = Marker

UICorner_11.Parent = RGB

Preview.Name = "Preview"
Preview.Parent = colorpi
Preview.AnchorPoint = Vector2.new(0.5, 0)
Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preview.BorderColor3 = Color3.fromRGB(40, 40, 40)
Preview.BorderSizePixel = 2
Preview.Position = UDim2.new(0.33455506, 0, 0.629999995, 0)
Preview.Size = UDim2.new(0.269110143, 0, 0.100000001, 0)
Preview.Visible = false
Preview.ZIndex = 4
Preview.SliceCenter = Rect.new(10, 10, 90, 90)

OpenClose.Name = "OpenClose"
OpenClose.Parent = SettingFrame
OpenClose.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
OpenClose.BackgroundTransparency = 1.000
OpenClose.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenClose.BorderSizePixel = 0
OpenClose.Position = UDim2.new(0.0412185118, 0, 0.273771107, 0)
OpenClose.Size = UDim2.new(0, 195, 0, 36)

BUTTONDESIGN.Name = "BUTTONDESIGN"
BUTTONDESIGN.Parent = OpenClose
BUTTONDESIGN.Active = false
BUTTONDESIGN.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
BUTTONDESIGN.BorderColor3 = Color3.fromRGB(0, 0, 0)
BUTTONDESIGN.BorderSizePixel = 0
BUTTONDESIGN.Position = UDim2.new(0.00255471258, 0, 0, 0)
BUTTONDESIGN.Selectable = false
BUTTONDESIGN.Size = UDim2.new(0, 194, 0, 33)
BUTTONDESIGN.Text = ""

UICorner_12.CornerRadius = UDim.new(0, 4)
UICorner_12.Parent = BUTTONDESIGN

Title_9.Name = "Title"
Title_9.Parent = BUTTONDESIGN
Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_9.BackgroundTransparency = 1.000
Title_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_9.BorderSizePixel = 0
Title_9.Position = UDim2.new(0.0441988967, 0, 0.175215289, 0)
Title_9.Size = UDim2.new(0, 129, 0, 20)
Title_9.Font = Enum.Font.SourceSansBold
Title_9.Text = "Open/Close GUI"
Title_9.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_9.TextSize = 14.000
Title_9.TextXAlignment = Enum.TextXAlignment.Left

TextButton_9.Parent = BUTTONDESIGN
TextButton_9.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
TextButton_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.BorderSizePixel = 0
TextButton_9.Position = UDim2.new(0.851000011, 0, 0.193602592, 0)
TextButton_9.Size = UDim2.new(0, 20, 0, 20)
TextButton_9.Text = "L"
TextButton_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 3)
UICorner_13.Parent = TextButton_9

OpenCloseMob.Name = "Open/CloseMob"
OpenCloseMob.Parent = SettingFrame
OpenCloseMob.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
OpenCloseMob.BackgroundTransparency = 1.000
OpenCloseMob.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenCloseMob.BorderSizePixel = 0
OpenCloseMob.Position = UDim2.new(0.0597370304, 0, 0.46047464, 0)
OpenCloseMob.Size = UDim2.new(0, 191, 0, 34)

BUTTONDESIGN_2.Name = "BUTTONDESIGN"
BUTTONDESIGN_2.Parent = OpenCloseMob
BUTTONDESIGN_2.Active = false
BUTTONDESIGN_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
BUTTONDESIGN_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
BUTTONDESIGN_2.BorderSizePixel = 0
BUTTONDESIGN_2.Position = UDim2.new(-0.0195446722, 0, -0.0294117648, 0)
BUTTONDESIGN_2.Selectable = false
BUTTONDESIGN_2.Size = UDim2.new(0, 194, 0, 33)
BUTTONDESIGN_2.Text = ""

UICorner_14.CornerRadius = UDim.new(0, 4)
UICorner_14.Parent = BUTTONDESIGN_2

Title_10.Name = "Title"
Title_10.Parent = BUTTONDESIGN_2
Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_10.BackgroundTransparency = 1.000
Title_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_10.BorderSizePixel = 0
Title_10.Position = UDim2.new(0.0331491716, 0, 0.175215289, 0)
Title_10.Size = UDim2.new(0, 129, 0, 20)
Title_10.Font = Enum.Font.SourceSansBold
Title_10.Text = "Open/Close GUI (Mobile Only)"
Title_10.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_10.TextSize = 14.000
Title_10.TextXAlignment = Enum.TextXAlignment.Left

TextButton_10.Name = "TextButton"
TextButton_10.Parent = BUTTONDESIGN_2
TextButton_10.Active = true
TextButton_10.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton_10.BackgroundTransparency = 1.000
TextButton_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.BorderSizePixel = 0
TextButton_10.Position = UDim2.new(0.851000011, 0, 0.193602592, 0)
TextButton_10.Selectable = true
TextButton_10.Size = UDim2.new(0, 20, 0, 20)
TextButton_10.Image = "http://www.roblox.com/asset/?id=15230865047"
TextButton_10.ImageColor3 = Color3.fromRGB(85, 170, 255)

o.Name = "o"
o.Parent = ESPFRAME

ColorSwitch.Name = "ColorSwitch"
ColorSwitch.Parent = UESP1
ColorSwitch.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
ColorSwitch.BackgroundTransparency = 1.000
ColorSwitch.BorderColor3 = Color3.fromRGB(0, 0, 0)
ColorSwitch.BorderSizePixel = 0
ColorSwitch.Position = UDim2.new(0.581382871, 0, 0.0384014808, 0)
ColorSwitch.Size = UDim2.new(0, 7, 0, 0)
ColorSwitch.Visible = false
ColorSwitch.Image = "http://www.roblox.com/asset/?id=15229054641"
ColorSwitch.ImageColor3 = Color3.fromRGB(85, 170, 255)

LTXOPEN.Name = "LTXOPEN"
LTXOPEN.Parent = UESP1
LTXOPEN.Active = false
LTXOPEN.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
LTXOPEN.BackgroundTransparency = 1.000
LTXOPEN.Position = UDim2.new(0.936756432, 0, 0.438271612, 0)
LTXOPEN.Selectable = false
LTXOPEN.Size = UDim2.new(0.0619912334, 0, 0.123456791, 0)
LTXOPEN.Visible = false
LTXOPEN.Image = "rbxassetid://12124296333"
LTXOPEN.ImageColor3 = Color3.fromRGB(85, 170, 255)

-- Scripts:

local function YYUWJ_fake_script() -- ESPS.n 
	local script = Instance.new('LocalScript', ESPS)

	function getdistancee(plr)
		local localPlayer = game.Players.LocalPlayer
		local localChar, targetChar = localPlayer.Character, plr.Character
		if localChar and targetChar then
			local dist = (localChar.PrimaryPart.Position - targetChar.PrimaryPart.Position).magnitude
			return dist
		else
			return nil
		end
	end
	
	function textstrokegarbages()
		pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				for i,v in pairs(v.Character.Head:GetChildren()) do
					if v.Name == "6ff7ds09n" then
						v.Frame.TextLabel.TextStrokeTransparency = 0.5
					end
	
				end
			end
		end)
	end
	
	
	function getdistance(plr)
		local localPlayer = game.Players.LocalPlayer
		local localChar, targetChar = localPlayer.Character, plr.Character
		if localChar and targetChar then
			local dist = (localChar.PrimaryPart.Position - targetChar.PrimaryPart.Position).magnitude
			local roundedDist = tonumber(string.format("%.1f", dist)) -- Round to 1 significant figure
			return roundedDist
		else
			return nil
		end
	end
	
	
	function checkifteam(ve)
		if script.Parent.AllyESP.TextButton ~= Color3.fromRGB(47, 47, 47) then
			if ve.Team.Name == game.Players.LocalPlayer.Team.Name then
				return false
			else
				return true
			end
		end
		
		return true
		
		
	end
	
	
	function asjdai()
		if script.Parent.TeamColor.TextButton.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			script.Parent.Parent.ESPSTUFF.Dup.TextColor3 = script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
		end
	end
	
	
	local ex = "s"
	while wait() do
		pcall(function()
			asjdai()
			textstrokegarbage()
		end)
		pcall(function()
			if script.Parent.NAMESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent.HEALTHESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent.DistanceESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then 
						pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
	v.Character.Head["6ff7ds09n"].Frame.TextLabel.Text = v.Name.." | "..v.Character.Humanoid.Health.." Hp | "..getdistance(v).." Studs"
							end
						end)
						end
						end
					script.Parent.Parent.ESPSTUFF.Dup.Text = "Name Health Distance"
		
				end)
				--name health distance
			elseif script.Parent.HEALTHESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent.DistanceESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--health and distance
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then 
							pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.Text = v.Character.Humanoid.Health.." Hp | "..getdistance(v).." Studs"
							end
						end)
						end
						end
					script.Parent.Parent.ESPSTUFF.Dup.Text = "Health Distance"
				end)
			elseif script.Parent.NAMESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent.DistanceESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--name and distance
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then 
							pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.Text = v.Name.." | "..getdistance(v).." Studs"
							end
						end)
						end
						end
					script.Parent.Parent.ESPSTUFF.Dup.Text = "Name Distance"
	
				end)
			elseif script.Parent.NAMESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent.HEALTHESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--name and health
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then 
							pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.Text = v.Name.." | "..v.Character.Humanoid.Health.." Hp"
							end
						end)
						end
						end
					script.Parent.Parent.ESPSTUFF.Dup.Text = "Name Health"
	
				end)
			elseif script.Parent.NAMESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--name
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then 
							pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.Text = v.Name
							end
						end)
						end
						end
					script.Parent.Parent.ESPSTUFF.Dup.Text = "Name"
				end)
			elseif script.Parent.DistanceESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--distance
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name ~= game.Players.LocalPlayer.Name then 
							pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.Text = getdistance(v).." Studs"
							end
						end)
						end
						end
					script.Parent.Parent.ESPSTUFF.Dup.Text = "Distance"
				end)
				
			elseif script.Parent.HEALTHESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--health
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
											if v.Name ~= game.Players.LocalPlayer.Name then 
							pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.Text = v.Character.Humanoid.Health.." Hp"
							end
						end)
						end
						end
					script.Parent.Parent.ESPSTUFF.Dup.Text = "Health"
	
				end)
			else
				--none
				
				script.Parent.Parent.ESPSTUFF.Dup.Text = ""
	        end
			
		end)
	end
end
coroutine.wrap(YYUWJ_fake_script)()
local function ZFVIA_fake_script() -- ESPS.t 
	local script = Instance.new('LocalScript', ESPS)

	wait()
	
	while wait() do
		pcall(function()
			if script.Parent.TeamColor.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--outline
				
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name == "s" then continue end -- game.Players.LocalPlayer.Name then continue end
						pcall(function()
							if v.Character:FindFirstChild("11f00h8lsfhh920") then
								v.Character["11f00h8lsfhh920"].FillColor = v.TeamColor.Color
								v.Character["11f00h8lsfhh920"].OutlineColor = v.TeamColor.Color
							end
						end)
					end
				end)
				--
				--textup
	
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name == "s" then continue end -- game.Players.LocalPlayer.Name then continue end
						pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.TextColor3 = v.TeamColor.Color
								script.Parent.Parent.ESPSTUFF.Dup.TextColor3 = Color3.fromRGB(255 ,255 ,255)
							end
						end)
					end
				end)
				--
			else
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name == "s" then continue end -- game.Players.LocalPlayer.Name then continue end
						pcall(function()
							if v.Character:FindFirstChild("11f00h8lsfhh920") then
								v.Character["11f00h8lsfhh920"].FillColor = script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
								v.Character["11f00h8lsfhh920"].OutlineColor = script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
							end
						end)
					end
				end)
				
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Name == "s" then continue end -- game.Players.LocalPlayer.Name then continue end
						pcall(function()
							if v.Character.Head:FindFirstChild("6ff7ds09n") then
								v.Character.Head["6ff7ds09n"].Frame.TextLabel.TextColor3 = script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
								script.Parent.Parent.ESPSTUFF.Dup.TextColor3 = script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
							end
						end)
					end
				end)
				
			end
		end)
	end
end
coroutine.wrap(ZFVIA_fake_script)()
local function TCIQ_fake_script() -- ESPS.g 
	local script = Instance.new('LocalScript', ESPS)

	wait()
	
	while wait() do
		pcall(function()
			if script.Parent.TeamColor.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent["Outline / glow"].TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				script.Parent.Parent.ESPSTUFF["EXAMPLE/GLOW"].ImageColor3 = Color3.fromRGB(255, 255, 255)
			elseif script.Parent["Outline / glow"].TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				script.Parent.Parent.ESPSTUFF["EXAMPLE/GLOW"].ImageColor3 = script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
				
			else
				script.Parent.Parent.ESPSTUFF["EXAMPLE/GLOW"].ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
		end)
	end
end
coroutine.wrap(TCIQ_fake_script)()
local function ZQFZPVK_fake_script() -- ESPS.b 
	local script = Instance.new('LocalScript', ESPS)

	wait()
	
	
	
	
	function setbox(col)
		for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
			if v.Name == "BOXESP" then
				v.BackgroundColor3 = col
			end
		end
	end
	
	function boxset(e)
		for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
			if v.Name == "BOXESP" then
				v.Visible = e
			end
		end
	end
	
	
	while wait() do
		pcall(function()
			if script.Parent.BOXESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent.TeamColor.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				setbox(Color3.fromRGB(255, 255, 255))
			boxset(true)
			elseif script.Parent.BOXESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				--setbox(Color3.fromRGB(0, 17, 255))
				setbox(script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3)
	
				boxset(true)
				
			else
				boxset(false)
			end
		end)
	end
end
coroutine.wrap(ZQFZPVK_fake_script)()
local function OQEQ_fake_script() -- ESPS.tr 
	local script = Instance.new('LocalScript', ESPS)

	wait()
	
	
	
	
	
	while wait() do
		pcall(function()
			if script.Parent.TracerESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) and script.Parent.TeamColor.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				
				for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
					if v.Name == "Tracer" then
						v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					end
				end
				for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
					if v.Name == "Tracer" then
						v.Visible = true
					end
				end
			elseif script.Parent.TracerESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
					if v.Name == "Tracer" then
						v.BackgroundColor3 = script.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
					end
				end
				for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
					if v.Name == "Tracer" then
						v.Visible = true
					end
				end
	
			else
				for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
					if v.Name == "Tracer" then
						v.Visible = false
					end
				end
			end
		end)
	end
end
coroutine.wrap(OQEQ_fake_script)()
local function HIFXYZJ_fake_script() -- ESPS.HIDEESP 
	local script = Instance.new('LocalScript', ESPS)

	function textstrokegarbages1()
		pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				for i,v in pairs(v.Character.Head:GetChildren()) do
					if v.Name == "6ff7ds09n" then
						v.Frame.TextLabel.TextStrokeTransparency = 0.5
					end
	
				end
			end
		end)
	end
	
	
	while wait() do
		pcall(function()
			textstrokegarbages1()
			--if script.Parent.AllyESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				pcall(function()
					for i,v in pairs(game.Players:GetPlayers()) do
						local bol = true
					if v.Team.Name == game.Players.LocalPlayer.Team.Name and script.Parent.AllyESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
							bol = false
						end
						pcall(function()
							v.Character["11f00h8lsfhh920"].Enabled = bol
							end)
							pcall(function()
						v.Character.Head["6ff7ds09n"].Frame.TextLabel.Visible = bol
						v.Character.Head["6ff7ds09n"].Frame.TextLabel.TextStrokeTransparency = 0.5
							end)
							for i,v in pairs(game.Players:GetPlayers()) do
								--if v.Name == game.Players.LocalPlayer.Name then continue end
						pcall(function()
							if v.Team.Name == game.Players.LocalPlayer.Team.Name and script.Parent.AllyESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
								game.Players.LocalPlayer.Character.HumanoidRootPart[v.Name].Enabled = false
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart[v.Name].Enabled = true
	
							end
								end)
							end
						
						end
						
					
					
				end)
			
			--end
		end)
	end
end
coroutine.wrap(HIFXYZJ_fake_script)()
local function SFEB_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	
	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
		else
			pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name == "s" then continue end -- game.Players.LocalPlayer.Name then continue end
				pcall(function()
						if v.Character.Head:FindFirstChild("6ff7ds09n") then
							v.Character.Head["6ff7ds09n"]:Destroy()
					    end
				end)
				end
				end)
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			
		end
	end)
	
	wait()
	
	function isteam(ve)
		if script.Parent.AllyESP.TextButton ~= Color3.fromRGB(47, 47, 47) then
			if ve.Team.Name == game.Players.LocalPlayer.Team.Name then
				return true
			else
				return false
			end
		end
		return false
	
		
	
	
	end
	
	
	while wait(0.1) do
		pcall(function()
		if script.Parent.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
				pcall(function()
					if not v.Character.Head:FindFirstChild("6ff7ds09n") then
	
						local BGui = Instance.new("BillboardGui", v.Character.Head)
						local Frame = Instance.new("Frame", BGui)
						local TextLabel = Instance.new("TextLabel", Frame)
						BGui.Name = "6ff7ds09n"
						BGui.Adornee = v.Character.Head
						BGui.StudsOffset = Vector3.new(0, 3, 0)
						BGui.AlwaysOnTop = true
						BGui.Size = UDim2.new(4, 0, 0.5, 0)
						Frame.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						Frame.BackgroundTransparency = 1
						TextLabel.BackgroundTransparency = 1
						TextLabel.Text = ""
						TextLabel.Font = Enum.Font.Code
						TextLabel.TextColor3 = script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
						TextLabel.TextScaled = false
								TextLabel.TextSize = 17
								TextLabel.TextStrokeTransparency = 0.49
					--	TextLabel.TextColor3 = v.TeamColor.Color
	
					end
	
	
					if v.Character.Head:FindFirstChild("6ff7ds09n") then
						pcall(function()
							v.Character.Head.NametagLS.Frame.TextLabel.TextColor3 = v.TeamColor.Color
						end)
					end
				end)
				end
				end
			end
			end)
	end
end
coroutine.wrap(SFEB_fake_script)()
local function RUHUSM_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	
	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
		else
			pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name == "s" then continue end -- game.Players.LocalPlayer.Name then continue end
				pcall(function()
						if v.Character.Head:FindFirstChild("6ff7ds09n") then
							v.Character.Head["6ff7ds09n"]:Destroy()
					    end
				end)
				end
				end)
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			
		end
	end)
	
	wait()
	while wait(0.1) do
		if script.Parent.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name == game.Players.LocalPlayer.Name then continue end
				pcall(function()
					if not v.Character.Head:FindFirstChild("6ff7ds09n") then
	
						local BGui = Instance.new("BillboardGui", v.Character.Head)
						local Frame = Instance.new("Frame", BGui)
						local TextLabel = Instance.new("TextLabel", Frame)
						BGui.Name = "6ff7ds09n"
						BGui.Adornee = v.Character.Head
						BGui.StudsOffset = Vector3.new(0, 3, 0)
						BGui.AlwaysOnTop = true
						BGui.Size = UDim2.new(4, 0, 0.5, 0)
						Frame.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						Frame.BackgroundTransparency = 1
						TextLabel.BackgroundTransparency = 1
						TextLabel.Text = ""
						TextLabel.Font = Enum.Font.Code
						TextLabel.TextColor3 = script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
						TextLabel.TextScaled = false
						TextLabel.TextSize = 17
						--TextLabel.TextColor3 = v.TeamColor.Color
	
					end
	
	
					if v.Character.Head:FindFirstChild("6ff7ds09n") then
						pcall(function()
							v.Character.Head.NametagLS.Frame.TextLabel.TextColor3 = v.TeamColor.Color
						end)
					end
				end)
			end
		end
	end
end
coroutine.wrap(RUHUSM_fake_script)()
local function RXUPX_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	
	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
		else
			pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name == "s" then continue end -- game.Players.LocalPlayer.Name then continue end
				pcall(function()
						if v.Character.Head:FindFirstChild("6ff7ds09n") then
							v.Character.Head["6ff7ds09n"]:Destroy()
					    end
				end)
				end
				end)
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			
		end
	end)
	
	wait()
	while wait(0.1) do
		if script.Parent.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name == game.Players.LocalPlayer.Name then continue end
				pcall(function()
					if not v.Character.Head:FindFirstChild("6ff7ds09n") then
	
						local BGui = Instance.new("BillboardGui", v.Character.Head)
						local Frame = Instance.new("Frame", BGui)
						local TextLabel = Instance.new("TextLabel", Frame)
						BGui.Name = "6ff7ds09n"
						BGui.Adornee = v.Character.Head
						BGui.StudsOffset = Vector3.new(0, 3, 0)
						BGui.AlwaysOnTop = true
						BGui.Size = UDim2.new(4, 0, 0.5, 0)
						Frame.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						Frame.BackgroundTransparency = 1
						TextLabel.BackgroundTransparency = 1
						TextLabel.Text = ""
						TextLabel.Font = Enum.Font.Code
						TextLabel.TextColor3 = script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
						TextLabel.TextScaled = false
						TextLabel.TextSize = 17
						--TextLabel.TextColor3 = v.TeamColor.Color
	
					end
	
	
					if v.Character.Head:FindFirstChild("6ff7ds09n") then
						pcall(function()
							v.Character.Head.NametagLS.Frame.TextLabel.TextColor3 = v.TeamColor.Color
						end)
					end
				end)
			end
		end
	end
end
coroutine.wrap(RXUPX_fake_script)()
local function OZSO_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	function setboxe(col)
		for i,v in pairs(script.Parent.Parent.Parent.Parent.ESPSTUFF:GetChildren()) do
			if v.Name == "BOXESP" then
				v.BackgroundColor3 = col
			end
		end
	end
	
	function boxsete(e)
		for i,v in pairs(script.Parent.Parent.ESPSTUFF:GetChildren()) do
			if v.Name == "BOXESP" then
				v.Visible = e
			end
		end
	end
	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
			boxsete(true)
		else
	
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			boxsete(false)
			
		end
	end)
	
	
end
coroutine.wrap(OZSO_fake_script)()
local function HIPDQD_fake_script() -- TextButton_4.main 
	local script = Instance.new('LocalScript', TextButton_4)

	
	
	function getdef()
		return script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
	end
	
	local settings = {
		defaultcolor = getdef(),
		teamcheck = false,
		teamcolor = false
	};
	
	-- services
	local runService = game:GetService("RunService");
	local players = game:GetService("Players");
	
	-- variables
	local localPlayer = players.LocalPlayer;
	local camera = workspace.CurrentCamera;
	
	-- functions
	local newVector2, newColor3, newDrawing = Vector2.new, Color3.new, Drawing.new;
	local tan, rad = math.tan, math.rad;
	local round = function(...) local a = {}; for i,v in next, table.pack(...) do a[i] = math.round(v); end return unpack(a); end;
	local wtvp = function(...) local a, b = camera.WorldToViewportPoint(camera, ...) return newVector2(a.X, a.Y), b, a.Z end;
	
	local espCache = {};
	local function createEsp(player)
		local drawings = {};
	
		drawings.box = newDrawing("Square");
		drawings.box.Thickness = 1.4;
		drawings.box.Filled = false;
		drawings.box.Color = getdef();
		drawings.box.Visible = false;
		drawings.box.ZIndex = 2;
	
		drawings.boxoutline = newDrawing("Square");
		drawings.boxoutline.Thickness = 3.4;
		drawings.boxoutline.Filled = false;
		drawings.boxoutline.Color = newColor3();
		drawings.boxoutline.Visible = false;
		drawings.boxoutline.ZIndex = 1;
	
		espCache[player] = drawings;
	end
	
	local function removeEsp(player)
		if rawget(espCache, player) then
			for _, drawing in next, espCache[player] do
				drawing:Remove();
			end
			espCache[player] = nil;
		end
	end
	
	local function updateEsp(player, esp)
		local character = player and player.Character;
		if character then
			local cframe = character:GetModelCFrame();
			local position, visible, depth = wtvp(cframe.Position);
			esp.box.Visible = visible;
			esp.boxoutline.Visible = visible;
			
			if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
				esp.box.Visible = false;
				esp.boxoutline.Visible = false;
			end
			
			
			
			
			if script.Parent.Parent.Parent.AllyESP.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
				if player.Team.Name == game.Players.LocalPlayer.Team.Name then
					esp.box.Visible = false;
					esp.boxoutline.Visible = false;
				end
			end
			
			
			if script.Parent.Parent.Parent.TeamColor.TextButton.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
				settings.teamcolor = false
			else
				settings.teamcolor = true
			end
	
			if cframe and visible then
				local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000;
				local width, height = round(4 * scaleFactor, 5 * scaleFactor);
				local x, y = round(position.X, position.Y);
	
				esp.box.Size = newVector2(width, height);
				esp.box.Position = newVector2(round(x - width / 2, y - height / 2));
				esp.box.Color = settings.teamcolor and player.TeamColor.Color or getdef();
	
				esp.boxoutline.Size = esp.box.Size;
				esp.boxoutline.Position = esp.box.Position;
			end
		else
			esp.box.Visible = false;
			esp.boxoutline.Visible = false;
		end
	end
	
	-- main
	for _, player in next, players:GetPlayers() do
		if player ~= localPlayer then
			createEsp(player);
		end
	end
	
	players.PlayerAdded:Connect(function(player)
		createEsp(player);
	end);
	
	players.PlayerRemoving:Connect(function(player)
		removeEsp(player);
	end)
	
	runService:BindToRenderStep("esp", Enum.RenderPriority.Camera.Value, function()
		for player, drawings in next, espCache do
			if settings.teamcheck and player.Team == localPlayer.Team then
				continue;
			end
	
			if drawings and player ~= localPlayer then
				updateEsp(player, drawings);
			end
		end
	end)
end
coroutine.wrap(HIPDQD_fake_script)()
local function XFMMK_fake_script() -- TextButton_5.LocalScript 
	local script = Instance.new('LocalScript', TextButton_5)

	
	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
		else
			pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
					if v.Name == game.Players.LocalPlayer.Name then continue end
				pcall(function()
						if v.Character:FindFirstChild("11f00h8lsfhh920") then
							v.Character["11f00h8lsfhh920"]:Destroy()
					    end
				end)
				end
				end)
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			
		end
	end)
	
	wait()
	while wait() do
		if script.Parent.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name == game.Players.LocalPlayer.Name then continue end
				pcall(function()
					if not v.Character:FindFirstChild("11f00h8lsfhh920") then
						local Highlight = Instance.new("Highlight")
						Highlight.Name = "11f00h8lsfhh920"
						--Highlight.FillColor = v.TeamColor.Color
						--Highlight.OutlineColor = v.TeamColor.Color
						Highlight.FillColor = script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
						Highlight.OutlineColor = script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3
						Highlight.FillTransparency = 0.40
						Highlight.Parent = v.Character
					end
				end)
			end
		end
	end
end
coroutine.wrap(XFMMK_fake_script)()
local function ALKG_fake_script() -- TextButton_6.Tracers 
	local script = Instance.new('LocalScript', TextButton_6)

	
	
	
	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			coroutine.wrap(function()
				script.Parent.Parent.Description.Text = "Loading Tracers... (This may take a while)"
				wait(2)
				script.Parent.Parent.Description.Text = "A line from your character to theres to see where they are"
			end)()
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
		else
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
				for i,s in pairs(game.Players:GetPlayers()) do
					pcall(function()
						game.Players.LocalPlayer.Character.HumanoidRootPart[s.Name]:Destroy()
					end)
					pcall(function()
						game.Players.LocalPlayer.Character.HumanoidRootPart["AttachMain"]:Destroy()
					end)
				end
			end
			
			
	
		end
	end)
	
	
	
	
	wait(1)
	
	
	
	
	
	
	wait_timez = 0.1
	
	
	while true do
		if script.Parent.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
		pcall(function()
				
				
				
			if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("AttachMain") then
				local aa = Instance.new("Attachment")
				aa.Name = "AttachMain"
					aa.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					aa.CFrame = CFrame.new(0, -1, 0, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829)
				--aa.CFrame = CFrame.new(aa.Position) + Vector3.new(1,-1,0)
			end
				for i,s in pairs(game.Players:GetPlayers()) do
				--part for the colors i assume
					pcall(function()
						if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild(s.Name) then
							pcall(function()
								game.Players.LocalPlayer.Character.HumanoidRootPart[s.Name].Attachment1 = s.Character.HumanoidRootPart.AttachTrace
							end)
							if script.Parent.Parent.Parent.TeamColor.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
								game.Players.LocalPlayer.Character.HumanoidRootPart[s.Name].Color = ColorSequence.new(s.TeamColor.Color, s.TeamColor.Color)
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart[s.Name].Color = ColorSequence.new(script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3,script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3)
							end
						end
	---------------------------------------
				end)
			
				
					if s.Name == game.Players.LocalPlayer.Name then continue end
					
				for i,v in pairs(s.Character.HumanoidRootPart:GetChildren()) do
					if v.Name == "AttachTrace" then
							if not v.Parent:FindFirstChild(v.Parent.Parent.Name) then
								if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild(v.Parent.Parent.Name) then
							local Beam2 = Instance.new("Beam")
							Beam2.Name = v.Parent.Parent.Name 
									Beam2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
									Beam2.Attachment0 = game.Players.LocalPlayer.Character.HumanoidRootPart.AttachMain
									Beam2.Attachment1 = v
								if script.Parent.Parent.Parent.TeamColor.TextButton.BackgroundColor3 ~= Color3.fromRGB(47, 47, 47) then
									Beam2.Color = ColorSequence.new(s.TeamColor.Color, s.TeamColor.Color)
								else
										Beam2.Color = ColorSequence.new(script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3,script.Parent.Parent.Parent.Parent.SettingFrame.ESPCOLOR.BackgroundColor3)
								end
							Beam2.FaceCamera = true
							Beam2.LightInfluence = 1
							Beam2.Transparency = NumberSequence.new(0.10000000298023224,0.10000000298023224)
							Beam2.Width0 = 0.04
									Beam2.Width1 = 0.04
									--Beam2.LightEmission = 1
							end
								end
								end
					end
				
			end
	
	
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name == game.Players.LocalPlayer.Name then continue end
				pcall(function()
	
					if v.Character.HumanoidRootPart:FindFirstChild("AttachTrace") then
						return
					else
						local aaa = Instance.new("Attachment")
						aaa.Name = "AttachTrace"
						aaa.Parent = v.Character.HumanoidRootPart
	
					end
	
				end)
			end
	
	
			end)
		end
		
		wait(wait_timez)
		if wait_timez == 0.1 then
			wait_timez = 1
		end
	
	end
	
	
	
end
coroutine.wrap(ALKG_fake_script)()
local function NCVV_fake_script() -- TextButton_7.LocalScript 
	local script = Instance.new('LocalScript', TextButton_7)

	
	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
		else
			pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
					if v.Name == game.Players.LocalPlayer.Name then continue end
					pcall(function()
						if v.Character:FindFirstChild("11f00h8lsfhh920") then
							v.Character["11f00h8lsfhh920"]:Destroy()
					    end
				end)
				end
			end)
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Name == game.Players.LocalPlayer.Name then continue end
					pcall(function()
						if v.Character.Head:FindFirstChild("6ff7ds09n") then
							v.Character.Head["6ff7ds09n"]:Destroy()
						end
					end)
				end
			end)
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			
		end
	end)
	
	
end
coroutine.wrap(NCVV_fake_script)()
local function UVBZHX_fake_script() -- TextButton_8.LocalScript 
	local script = Instance.new('LocalScript', TextButton_8)

	
	
	script.Parent.MouseButton1Down:connect(function()
		local u = 0
		
		for i,v in pairs(game.Teams:GetChildren()) do
			u = u + 1
		end
		
		if u == 0 then
			local NotificationLoad = loadstring(game:HttpGet(('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua'),true))()
			NotificationLoad:NewNotification({
				["Mode"] = "error", -- Choose one (Success/Info/Error)
				["Title"] = "Unavailable", -- Title of notification
				["Description"] = "This option is unavailable to use in games that does not use roblox team system",
				["Timeout"] = 5, -- How long the notification will last (Change to false if you want no timer)
				["Audio"] = true -- Plays audio if enabled on each notification
			})
			return
		end
		if script.Parent.BackgroundColor3 == Color3.fromRGB(47, 47, 47) then
			
			script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.ColorSwitch.ImageColor3
			script.Parent.Parent.BackgroundTransparency = 0.7
			--tracers
			--pcall(function()
				--for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
					--for i,s in pairs(game.Players:GetPlayers()) do
						--pcall(function()
						--	game.Players.LocalPlayer.Character.HumanoidRootPart[s.Name]:Destroy()
					--	end)
						--	game.Players.LocalPlayer.Character.HumanoidRootPart["AttachMain"]:Destroy()
						--end)
					--end
				--end
			--end)
	
			--name
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Name == game.Players.LocalPlayer.Name then continue end
					pcall(function()
						if v.Character.Head:FindFirstChild("6ff7ds09n") then
							v.Character.Head["6ff7ds09n"]:Destroy()
						end
					end)
				end
			end)
			
		else
			script.Parent.Parent.BackgroundTransparency = 0
			script.Parent.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			
			
			
	
	
		end
	end)
end
coroutine.wrap(UVBZHX_fake_script)()
local function KBVRVKV_fake_script() -- ESPFRAME.drag 
	local script = Instance.new('LocalScript', ESPFRAME)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(KBVRVKV_fake_script)()
local function DZZWB_fake_script() -- Settingsbuttopn.LocalScript 
	local script = Instance.new('LocalScript', Settingsbuttopn)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Text == "Settings" then
			script.Parent.Text = "Close Settings"
			script.Parent.Parent.SettingFrame.Visible = true
			script.Parent.Parent.drag.Enabled = false
		else
			script.Parent.Text = "Settings"
			script.Parent.Parent.SettingFrame.Visible = false
			script.Parent.Parent.drag.Enabled = true
		end
	end)
end
coroutine.wrap(DZZWB_fake_script)()
local function VTBU_fake_script() -- ESPCOLOR.LocalScript 
	local script = Instance.new('LocalScript', ESPCOLOR)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.colorpi.Visible = not script.Parent.Parent.colorpi.Visible
		script.Parent.Parent.Framae.Visible = not script.Parent.Parent.Framae.Visible
	end)
end
coroutine.wrap(VTBU_fake_script)()
-- colorpi.ColorMain is disabled.
local function JXKWTO_fake_script() -- colorpi.ColorMain2 
	local script = Instance.new('LocalScript', colorpi)

	local success, error = pcall(function()
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
	
		local rgb = script.Parent:WaitForChild("RGB")
		--local value = script.Parent:WaitForChild("Value")
		local preview = script.Parent:WaitForChild("Preview")
	
		local selectedColor = Color3.fromHSV(1, 1, 1)
		local colorData = {1, 1, 1}
	
		local mouse1down = false
		local namesofexclusion = {"colorpei", "Circle"}
	
		local function setColor(hue, sat, val)
			if script.Parent.Parent.Visible == true then
				colorData = {hue or colorData[1], sat or colorData[2], val or colorData[3]}
				selectedColor = Color3.fromHSV(colorData[1], colorData[2], colorData[3])
				script.Parent.Parent.ESPCOLOR.BackgroundColor3 = selectedColor
			end
		end
	
		local function inBounds(frame)
			if script.Parent.Parent.Visible == true then
				local x, y = mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y
				local maxX, maxY = frame.AbsoluteSize.X, frame.AbsoluteSize.Y
				if x >= 0 and y >= 0 and x <= maxX and y <= maxY then
					return x / maxX, y / maxY
				end
			end
		end
	
		local function updateRGB()
			if script.Parent.Parent.Visible == true and mouse1Down then
				local x, y = inBounds(rgb)
				if x and y then
					rgb:WaitForChild("Marker").Position = UDim2.new(x, 0, y, 0)
					setColor(1 - x, 1 - y)
				end
	
				local x, y = inBounds(rgb)
				if x and y then
					value:WaitForChild("Marker").Position = UDim2.new(0.5, 0, y, 0)
					setColor(nil, nil, 1 - y)
				end
			end
		end
	
		mouse.Move:connect(updateRGB)
	
		mouse.Button1Down:connect(function() mouse1Down = true end)
		mouse.Button1Up:connect(function() mouse1Down = false end)
	end)
	
	
end
coroutine.wrap(JXKWTO_fake_script)()
local function XHZD_fake_script() -- BUTTONDESIGN.LocalScript 
	local script = Instance.new('LocalScript', BUTTONDESIGN)

	script.Parent.MouseButton1Down:connect(function()
			setclipboard('https://discord.gg/sdCSmXRjuX')
		end)
end
coroutine.wrap(XHZD_fake_script)()
local function NQHXEW_fake_script() -- TextButton_9.LocalScript 
	local script = Instance.new('LocalScript', TextButton_9)

	
	
	local userInputService = game:GetService("UserInputService")
	local function getmyebasdasda()
		script.Parent.Text = "..."
		pcall(function()
			script.Parent.Parent.Keybind:Destroy()
		end)
	
		local inputEvent
		inputEvent = userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				script.Parent.Text = "" .. tostring(input.KeyCode.Name)
				inputEvent:Disconnect()
				wait(0.1)
				local e = Instance.new("BoolValue")
				e.Parent = script.Parent.Parent
				e.Name = "Keybind"
				inputEvent:Disconnect()
			end
		end)
	end
	
	
	script.Parent.MouseButton1Click:Connect(getmyebasdasda)
	
end
coroutine.wrap(NQHXEW_fake_script)()
local function QKYM_fake_script() -- BUTTONDESIGN.toggleoff/on 
	local script = Instance.new('LocalScript', BUTTONDESIGN)

	local frame = script.Parent.Parent.Parent.Parent.Parent.ESPFRAME
	
	
	local UIS = game:GetService("UserInputService")
	local open = true
	
	local waittchange = true
	
	UIS.InputBegan:Connect(function(key, gp)
		if key.KeyCode == Enum.KeyCode[script.Parent.TextButton.Text] and script.Parent:FindFirstChild("Keybind") then
			
			if UIS:GetFocusedTextBox() == nil then
				if open == false then
					open = true 
					frame.Visible = open
				elseif open == true then
					open = false
					frame.Visible = open
				end
				end
				end
				
		
	end)
end
coroutine.wrap(QKYM_fake_script)()
local function TAJP_fake_script() -- BUTTONDESIGN_2.LocalScript 
	local script = Instance.new('LocalScript', BUTTONDESIGN_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.LTXOPEN.Visible = true
		script.Parent.Parent.Parent.Parent.Parent.ESPFRAME.Visible = false
	end)
end
coroutine.wrap(TAJP_fake_script)()
local function RJHCE_fake_script() -- ESPFRAME.tweening 
	local script = Instance.new('LocalScript', ESPFRAME)

	pcall(function()
		if game.CoreGui:FindFirstChild("UESP12") then
			local NotificationLoad = loadstring(game:HttpGet(('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua'),true))()
			NotificationLoad:NewNotification({
				["Mode"] = "info", -- Choose one (Success/Info/Error)
				["Title"] = "Warning", -- Title of notification
				["Description"] = "You already executed the script so now there will be issues caused, please execute once only",
				["Timeout"] = 15, -- How long the notification will last (Change to false if you want no timer)
				["Audio"] = true -- Plays audio if enabled on each notification
			})
			script.Parent.Parent:Destroy()
	
		end
	end)
	
	pcall(function()
		local inse = Instance.new("BoolValue")
		inse.Name = "UESP12"
		inse.Parent = game.CoreGui
	end)
	
	
	
	
	
	local sizenow = UDim2.new(0, 436,0, 266)
	
	for i,v in pairs(script.Parent:GetChildren()) do
		pcall(function()
			if v.Name ~= "SettingFrame" then
				v.Visible = false
			end
		end)
	end
	
	script.Parent.ESPSTUFF["EXAMPLE/GLOW"].Visible = false
	script.Parent.Size = UDim2.new(0, 2,0, 266)
	
	
	
	
	
	local tween = game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = sizenow})
	tween:Play()
	
	tween.Completed:Wait()
	
	for i,v in pairs(script.Parent:GetChildren()) do
		pcall(function()
			if v.Name ~= "SettingFrame" then
				
					
					v.Visible = true
					
				
			end
		end)
	end
	
	script.Parent.ESPSTUFF["EXAMPLE/GLOW"].Visible = true
end
coroutine.wrap(RJHCE_fake_script)()
local function BFPWBAT_fake_script() -- UESP1.Notification 
	local script = Instance.new('LocalScript', UESP1)

	
	
	
	local Not = Instance.new("ScreenGui")
	local UIListLayout = Instance.new("UIListLayout")
	local IGNORE = Instance.new("Frame")
	local Frame = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local IGNORE_2 = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	Not.Name = "Notif"
	Not.Parent = game.CoreGui
	Not.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	UIListLayout.Parent = Not
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	IGNORE.Name = "IGNORE"
	IGNORE.Parent = Not
	IGNORE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IGNORE.BackgroundTransparency = 1.000
	IGNORE.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IGNORE.BorderSizePixel = 0
	IGNORE.Position = UDim2.new(0.457555175, 0, 0, 0)
	IGNORE.Size = UDim2.new(0, 100, 0, 16)
	Frame.Name = "Frame"
	Frame.Parent = Not
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.340300471, 0, 0.164197534, 0)
	Frame.Size = UDim2.new(0, 487, 0, 76)
	Frame.Image = "http://www.roblox.com/asset/?id=15589967224"
	Frame.ScaleType = Enum.ScaleType.Crop
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Frame
	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = Frame
	DropShadowHolder.BackgroundTransparency = 1.000
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
	DropShadowHolder.ZIndex = 0
	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	IGNORE_2.Name = "IGNORE"
	IGNORE_2.Parent = DropShadowHolder
	IGNORE_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IGNORE_2.BackgroundTransparency = 1.000
	IGNORE_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IGNORE_2.BorderSizePixel = 0
	IGNORE_2.Position = UDim2.new(0.457555115, 0, 0, 0)
	IGNORE_2.Size = UDim2.new(0, 100, 0, -16)
	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.151950717, 0, 0.0394736826, 0)
	TextLabel.Size = UDim2.new(0, 316, 0, 30)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.Text = "Thank you for using Lightux!"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 20.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.0225872695, 0, 0.167693093, 0)
	ImageLabel.Size = UDim2.new(0, 50, 0, 50)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=15589996073"
	ImageLabel.ImageColor3 = Color3.fromRGB(85, 170, 255)
	TextLabel_2.Parent = Frame
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.151950717, 0, 0.434210539, 0)
	TextLabel_2.Size = UDim2.new(0, 403, 0, 39)
	TextLabel_2.Font = Enum.Font.SourceSansSemibold
	TextLabel_2.Text = "Join our discord to get notified of any updates / fixes and any new scripts that get released discord.gg/scripts"
	TextLabel_2.TextColor3 = Color3.fromRGB(176, 176, 176)
	TextLabel_2.TextSize = 15.000
	TextLabel_2.TextWrapped = true
	TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top
	local function MKROWL_fake_script() -- Not.LocalScript 
		local script = Instance.new('LocalScript', Not)
		pcall(function()
			wait(6)
			for i,v in pairs(script.Parent:GetDescendants()) do
				pcall(function()
					game:GetService("TweenService"):Create(v, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Transparency = 1}):Play()
				end)
				pcall(function()
					game:GetService("TweenService"):Create(v, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
	
				end)
				Frame:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function()
					if Frame.BackgroundTransparency == 1 then
						Not:Destroy()
					end
				end)
			end
		end)
	end
	coroutine.wrap(MKROWL_fake_script)()
end
coroutine.wrap(BFPWBAT_fake_script)()
local function SITMKLQ_fake_script() -- LTXOPEN.LocalScript 
	local script = Instance.new('LocalScript', LTXOPEN)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.LTXOPEN.Visible = false
		script.Parent.Parent.ESPFRAME.Visible = true
	end)
end
coroutine.wrap(SITMKLQ_fake_script)()
