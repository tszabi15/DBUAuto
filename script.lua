
local loaded = false
local enableReb = true
local enableFarm = true
 
success, err = pcall(function()
    while not loaded do
        if game["loaded"] then
            
            loaded = true
            break
        end
    end
end)

local success, result = pcall(function()
    repeat
        task.wait()
    until game.Players.LocalPlayer ~= nil and game.Players.LocalPlayer.Name ~= nil and
        game.Players.LocalPlayer:GetMouse() ~= nil

    repeat
        task.wait()
    until game:IsLoaded()
    game:WaitForChild("ReplicatedStorage")
    game.ReplicatedStorage:WaitForChild("Datas")
    game.ReplicatedStorage.Datas:WaitForChild(game.Players.LocalPlayer.UserId)
end)
--UI Section

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ScriptGui"
screenGui.ResetOnSpawn = false

-- Create ScrollingFrame
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "ScrollingFrame"
scrollingFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
scrollingFrame.Size = UDim2.new(0.4, 0, 0.4, 0) -- Full size of parent
scrollingFrame.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
scrollingFrame.BackgroundTransparency = 0.1
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0.5, 0) -- Adjust as needed
--scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollingFrame.ScrollBarThickness = 10
--scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
--scrollingFrame.Active = true
scrollingFrame.Parent = screenGui

-- Create Inner Frame
local innerFrame = Instance.new("Frame")
innerFrame.Name = "InnerFrame"
innerFrame.Size = UDim2.new(0.9, 0, 0.8, 0) -- Half size of parent
innerFrame.Position = UDim2.new(0.05, 0, 0.1, 0) -- Centered in parent
innerFrame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
innerFrame.BackgroundTransparency = 0.2
innerFrame.Parent = scrollingFrame

--Create Farm Frame
local farmFrame = Instance.new("Frame")
farmFrame.Name = "FarmFrame"
farmFrame.Size = UDim2.new(1, 0, 0.25, 0) -- Half size of parent
farmFrame.Position = UDim2.new(0, 0, 0.5, 0) -- Centered in parent
farmFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
farmFrame.BackgroundTransparency = 0.2
farmFrame.Parent = innerFrame

--Create CheckFarm
local checkFarm = Instance.new("TextButton")
checkFarm.Name = "CheckFarm"
checkFarm.Text = ""
checkFarm.Size = UDim2.new(0, 30, 0, 30) -- Full size of parent
checkFarm.Position = UDim2.new(0.75, 0, 0.1, 0) -- Centered in parent
checkFarm.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
checkFarm.BackgroundTransparency = 0.2
checkFarm.BorderMode = Enum.BorderMode.Inset
checkFarm.BorderSizePixel = 3
checkFarm.BorderColor3 = Color3.fromRGB(0, 0, 0)
checkFarm.Parent = farmFrame

local CheckedF = Instance.new("Frame")
CheckedF.Name = "Checked"
CheckedF.Size = UDim2.new(0.8, 0, 0.8, 0) -- Full size of parent
CheckedF.Position = UDim2.new(0.1, 0, 0.1, 0) -- Centered in parent
CheckedF.BackgroundTransparency = 0.1
CheckedF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CheckedF.Parent = checkFarm


local Farm = Instance.new("TextLabel")
Farm.Size = UDim2.new(0.75, 0, 1, 0) -- Full size of parent
Farm.Position = UDim2.new(0, 0, 0, 0) -- Centered in parent
Farm.BackgroundTransparency = 1
Farm.Text = "Auto Farm"
Farm.TextScaled = true
Farm.TextWrapped = true
Farm.TextColor3 = Color3.fromRGB(0, 0, 0)
Farm.FontFace = Font.fromEnum(Enum.Font.Bangers)
Farm.TextStrokeTransparency = 0.2
Farm.TextStrokeColor3 = Color3.fromRGB(1, 228, 253)
Farm.Parent = farmFrame
--Farm Frame

--Create Rebirth Frame
local rebFrame = Instance.new("Frame")
rebFrame.Name = "RebFrame"
rebFrame.Size = UDim2.new(1, 0, 0.25, 0) -- Half size of parent
rebFrame.Position = UDim2.new(0, 0, 0.2, 0) -- Centered in parent
rebFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
rebFrame.BackgroundTransparency = 0.2
rebFrame.Parent = innerFrame

--Create CheckReb
local checkReb = Instance.new("TextButton")
checkReb.Name = "CheckReb"
checkReb.Text = ""
checkReb.Size = UDim2.new(0, 30, 0, 30) -- Full size of parent
checkReb.Position = UDim2.new(0.75, 0, 0.1, 0) -- Centered in parent
checkReb.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
checkReb.BackgroundTransparency = 0.2
checkReb.BorderColor3 = Color3.fromRGB(0, 0, 0)
checkReb.BorderMode = Enum.BorderMode.Inset
checkReb.BorderSizePixel = 3
checkReb.Text = ""
checkReb.Parent = rebFrame

local CheckedR = Instance.new("Frame")
CheckedR.Name = "Checked"
CheckedR.Size = UDim2.new(0.8, 0, 0.8, 0) -- Full size of parent
CheckedR.Position = UDim2.new(0.1, 0, 0.1, 0) -- Centered in parent
CheckedR.BackgroundTransparency = 0.1
CheckedR.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CheckedR.Parent = checkReb


local Reb = Instance.new("TextLabel")
Reb.Size = UDim2.new(0.75, 0, 1, 0) -- Full size of parent
Reb.BackgroundTransparency = 1
Reb.Text = "Auto Rebirth"
Reb.TextScaled = true
Reb.TextWrapped = true
Reb.TextColor3 = Color3.fromRGB(0, 0, 0)
Reb.FontFace = Font.fromEnum(Enum.Font.Bangers)
Reb.TextStrokeTransparency = 0.2
Reb.TextStrokeColor3 = Color3.fromRGB(1, 228, 253)
Reb.Parent = rebFrame
--Reb Frame

local Pref = Instance.new("TextButton")
Pref.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Pref.TextColor3 = Color3.fromRGB(0, 0, 0)
Pref.Size = UDim2.new(0.3, 0, 0.2, 0)
Pref.Text = "Preferances"
Pref.FontFace = Font.fromEnum(Enum.Font.Bangers)
Pref.TextScaled = true
Pref.TextStrokeTransparency = 0.2
Pref.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Pref.BorderMode = Enum.BorderMode.Inset
Pref.BorderSizePixel = 3
Pref.Parent = innerFrame

-- Create DestroyB
local DestroyB = Instance.new("TextButton")
DestroyB.Name = "Destroy"
DestroyB.Text = "Destroy UI"
DestroyB.FontFace = Font.fromEnum(Enum.Font.Creepster)
DestroyB.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DestroyB.Size = UDim2.new(0.4, 0, 0.2, 0) -- Full size of parent
DestroyB.Position = UDim2.new(0.3, 0, 0.75, 0)
DestroyB.TextScaled = true
DestroyB.Parent = innerFrame

-- Add UICorner to DestroyB
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0.5, 0) -- 10% corner radius
uiCorner.Parent = DestroyB

--Thanks
local Thanks = Instance.new("TextLabel")
Thanks.Size = UDim2.new(1, 0, 0.1, 0) -- Full size of parent
Thanks.Position = UDim2.new(0, 0, 1, 0) -- Centered in parent
Thanks.BackgroundTransparency = 1
Thanks.Text = "Thanks for using my Script! :)"
Thanks.TextScaled = true
Thanks.FontFace = Font.fromEnum(Enum.Font.SourceSansBold)
Thanks.Parent = innerFrame

local BaseBar = Instance.new("Frame")
BaseBar.Size = UDim2.new(0.30, 0, 0.05, 0) -- Full size of parent
BaseBar.Position = UDim2.new(0.3, 0, 0.3, 0) -- Centered in parent
BaseBar.BackgroundTransparency = 0.1
BaseBar.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
BaseBar.Parent = screenGui
-- Shut
local Shut = Instance.new("TextButton")
Shut.Size = UDim2.new(0.1, 0, 1, 0) -- Full size of parent
Shut.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Shut.Text = "-"
Shut.TextSize = 40
Shut.FontFace = Font.fromEnum(Enum.Font.SourceSansBold)
Shut.TextColor3 = Color3.fromRGB(255, 255, 255)
Shut.Parent = BaseBar

local By = Instance.new("TextLabel")
By.BorderColor3 = Color3.fromRGB(4, 184, 184)
By.Size = UDim2.new(1, 0, 1, 0)
By.BackgroundTransparency = 1
By.FontFace = Font.fromEnum(Enum.Font.Bangers)
By.TextColor3 = Color3.fromRGB(1, 153, 255)
By.Text = "Made by: Abs0lute0 | version: 1.2 REL"
By.TextScaled = true
By.TextStrokeTransparency = 0
By.Parent = BaseBar

-- Functionality to Destroy the ScreenGui
DestroyB.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end) 
checkFarm.MouseButton1Click:Connect(function()
	if CheckedF.Visible then
		CheckedF.Visible = false
        enableFarm = false
	else
		CheckedF.Visible = true
        enableFarm = true
	end
end)
checkReb.MouseButton1Click:Connect(function()
	if CheckedR.Visible then
		CheckedR.Visible = false
        enableReb = false
	else
		CheckedR.Visible = true
        enableReb = true
	end

end)
local TweenS = game:GetService("TweenService")
-- Make a Tween animation to shut the scrollingFrame
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
local tween = TweenS:Create(scrollingFrame, tweenInfo, {Size = UDim2.new(0.4, 0, 0, 0)})
local tween2 = TweenS:Create(scrollingFrame, tweenInfo, {Size = UDim2.new(0.4, 0, 0.4, 0)})
Shut.MouseButton1Click:Connect(function()
	if scrollingFrame.Visible then
		tween:Play()
		task.wait(0.2)
		scrollingFrame.Visible = false
		Shut.Text = "+"
	else
		tween2:Play()
		scrollingFrame.Visible = true
		task.wait(0.2)
		Shut.Text = "-"
	end
end)

screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

--Constants
local minStat = 120000000 -- Min stat for Bills Planet

local LocalPlayerName;
local autoFarmLoopRunning = true
local isFlying = false
local isCharging = false
local isPlayerDead = false
local isRebirthed = false

function format_number(number)
    local suffixes = {"", "K", "M", "B", "T", "QD"}
    local suffix_index = 1

    while math.abs(number) >= 1000 and suffix_index < #suffixes do
        number = number / 1000.0
        suffix_index = suffix_index + 1
    end

    return string.format("%.2f%s", number, suffixes[suffix_index])
end


function getCheckValue()
    LocalPlayerData = game.ReplicatedStorage.Datas[game.Players.LocalPlayer.UserId]
    local Strength = LocalPlayerData.Strength.Value
    local Energy = LocalPlayerData.Energy.Value
    local Defense = LocalPlayerData.Defense.Value
    local Speed = LocalPlayerData.Speed.Value

    local smallestStat = Strength 

    if Energy < smallestStat then
        smallestStat = Energy
    end

    if Defense < smallestStat then
        smallestStat = Defense
    end

    if Speed < smallestStat then
        smallestStat = Speed
    end

    return smallestStat
end
local PaidFormsList = {
    Evil = {{
        Name = "SSJ2 Kaioken",
        requiredValue = 50000,
        endRange = 160000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950449
    }, {
        Name = "LSSJ Kaioken",
        requiredValue = 160001,
        endRange = 250000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950449
    }, {
        Name = "Mystic Kaioken",
        requiredValue = 250001,
        endRange = 550000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950449
    }, {
        Name = "SSJ5",
        requiredValue = 550001,
        endRange = 800000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950469
    }, {
        Name = "LSSJ3",
        requiredValue = 800001,
        endRange = 1000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6951002
    }, {
        Name = "SSJG4",
        requiredValue = 1000001,
        endRange = 1800000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950465
    }, {
        Name = "LSSJ4",
        requiredValue = 1800001,
        endRange = 3000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6951002
    }, {
        Name = "LSSJG",
        requiredValue = 3000001,
        endRange = 4000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6951002
    }, {
        Name = "Super Broly",
        requiredValue = 4000000,
        endRange = 30000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 7837022
    }, {
        Name = "True God of Destruction",
        requiredValue = 30000001,
        endRange = 50000000,
        Alignment = "Evil",
        rebirthReq = 10,
        formOwned = false,
        GamePassID = 9848987
    }, {
        Name = "SSJB4",
        requiredValue = 50000001,
        endRange = 100000000000000000000000,
        Alignment = "Neutral",
        rebirthReq = 13,
        formOwned = false,
        GamePassID = 6950465
    }, {
        Name = "Blanco",
        requiredValue = 120000001,
        endRange = 100000000000000000000000,
        Alignment = "Neutral",
        rebirthReq = 24,
        formOwned = false,
        GamePassID = 676684901
    }},
    Good = {{
        Name = "SSJ2 Kaioken",
        requiredValue = 50000,
        endRange = 160000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950449
    }, {
        Name = "LSSJ Kaioken",
        requiredValue = 160001,
        endRange = 250000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950449
    }, {
        Name = "Mystic Kaioken",
        requiredValue = 250001,
        endRange = 550000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950449
    }, {
        Name = "SSJ5",
        requiredValue = 550001,
        endRange = 800000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950469
    }, {
        Name = "LSSJ3",
        requiredValue = 800001,
        endRange = 1000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6951002
    }, {
        Name = "SSJG4",
        requiredValue = 1000001,
        endRange = 1800000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6950465
    }, {
        Name = "LSSJ4",
        requiredValue = 1800001,
        endRange = 3000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6951002
    }, {
        Name = "LSSJG",
        requiredValue = 3000001,
        endRange = 4000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 6951002
    }, {
        Name = "Super Broly",
        requiredValue = 4000000,
        endRange = 30000000,
        Alignment = "Neutral",
        rebirthReq = 0,
        formOwned = false,
        GamePassID = 7837022
    }, {
        Name = "True God of Creation",
        requiredValue = 30000001,
        endRange = 50000000,
        Alignment = "Good",
        rebirthReq = 10,
        formOwned = false,
        GamePassID = 9848987
    }, {
        Name = "SSJB4",
        requiredValue = 50000001,
        endRange = 120000000,
        Alignment = "Neutral",
        rebirthReq = 13,
        formOwned = false,
        GamePassID = 6950465
    }, {
        Name = "Blanco",
        requiredValue = 120000001,
        endRange = 100000000000000000000000,
        Alignment = "Neutral",
        rebirthReq = 24,
        formOwned = false,
        GamePassID = 676684901
    }}
}

local FormsList = {

    Evil = {{
        Name = "Kaioken",
        requiredValue = 1000,
        endRange = 2500,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "FSSJ",
        requiredValue = 2501,
        endRange = 6000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ",
        requiredValue = 6001,
        endRange = 16000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ Kaioken",
        requiredValue = 16001,
        endRange = 34000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ2",
        requiredValue = 34001,
        endRange = 65000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ2 Majin",
        requiredValue = 65001,
        endRange = 95000,
        Alignment = "Evil",
        rebirthReq = 0
    }, {
        Name = "SSJ3",
        requiredValue = 95001,
        endRange = 140000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "LSSJ",
        requiredValue = 140001,
        endRange = 200000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "Mystic",
        requiredValue = 200001,
        endRange = 300000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ4",
        requiredValue = 300001,
        endRange = 450000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJG",
        requiredValue = 450001,
        endRange = 700000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "Corrupt SSJ",
        requiredValue = 700001,
        endRange = 1400000,
        Alignment = "Evil",
        rebirthReq = 0
    }, {
        Name = "SSJ Rose",
        requiredValue = 1400001,
        endRange = 2400000,
        Alignment = "Evil",
        rebirthReq = 0
    }, {
        Name = "True Rose",
        requiredValue = 2400001,
        endRange = 3000000,
        Alignment = "Evil",
        rebirthReq = 0
    }, {
        Name = "SSJ Berserker",
        requiredValue = 3000001,
        endRange = 3500000,
        Alignment = "Evil",
        rebirthReq = 1
    }, {
        Name = "Dark Rose",
        requiredValue = 3500001,
        endRange = 4000000,
        Alignment = "Evil",
        rebirthReq = 2
    }, {
        Name = "Evil SSJ",
        requiredValue = 4000001,
        endRange = 5000000,
        Alignment = "Evil",
        rebirthReq = 3
    }, {
        Name = "Godly SSJ2",
        requiredValue = 8000001,
        endRange = 14000000,
        Alignment = "Neutral",
        rebirthReq = 4
    }, {
        Name = "Jiren Ultra Instinct",
        requiredValue = 14000001,
        endRange = 30000000,
        Alignment = "Evil",
        rebirthReq = 6
    }, {
        Name = "God of Destruction",
        requiredValue = 30000001,
        endRange = 50000000,
        Alignment = "Evil",
        rebirthReq = 10
    }, {
        Name = "SSJR3",
        requiredValue = 50000001,
        endRange = 100000000,
        Alignment = "Evil",
        rebirthReq = 12
    }, {
        Name = "LBSSJ4",
        requiredValue = 100000001,
        endRange = 120000000,
        Alignment = "Good",
        rebirthReq = 18
    }, {
        Name = "Ultra Ego",
        requiredValue = 120000001,
        endRange = 120000002,
        Alignment = "Evil",
        rebirthReq = 20
    }, {
        Name = "Beast",
        requiredValue = 120000001,
        endRange = 140000000,
        Alignment = "Neutral",
        rebirthReq = 24
    }, {
		Name = "Astral Instinct",
		requiredValue = 140000001,
		endRange = 12000000000000000000000000000000000,
		Alignment = "Neutral",
		rebirthReq = 26
	}},

    Good = {{
        Name = "Kaioken",
        requiredValue = 1000,
        endRange = 2500,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "FSSJ",
        requiredValue = 2501,
        endRange = 6000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ",
        requiredValue = 6001,
        endRange = 16000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ Kaioken",
        requiredValue = 16001,
        endRange = 34000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ2",
        requiredValue = 34001,
        endRange = 65000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "Spirit SSJ",
        requiredValue = 65001,
        endRange = 95000,
        Alignment = "Good",
        rebirthReq = 0
    }, {
        Name = "SSJ3",
        requiredValue = 95001,
        endRange = 140000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "LSSJ",
        requiredValue = 140001,
        endRange = 200000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "Mystic",
        requiredValue = 200001,
        endRange = 300000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ4",
        requiredValue = 300001,
        endRange = 450000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJG",
        requiredValue = 450001,
        endRange = 700000,
        Alignment = "Neutral",
        rebirthReq = 0
    }, {
        Name = "SSJ Rage",
        requiredValue = 700001,
        endRange = 1200000,
        Alignment = "Good",
        rebirthReq = 0
    }, {
        Name = "SSJ Blue",
        requiredValue = 1200001,
        endRange = 2200000,
        Alignment = "Good",
        rebirthReq = 0
    }, {
        Name = "SSJB Kaioken",
        requiredValue = 2200001,
        endRange = 3000000,
        Alignment = "Good",
        rebirthReq = 0
    }, {
        Name = "Kefla SSJ2",
        requiredValue = 3000001,
        endRange = 3500000,
        Alignment = "Good",
        rebirthReq = 1
    }, {
        Name = "Blue Evolution",
        requiredValue = 3500001,
        endRange = 5000000,
        Alignment = "Good",
        rebirthReq = 2
    }, {
        Name = "Godly SSJ2",
        requiredValue = 8000001,
        endRange = 14000000,
        Alignment = "Neutral",
        rebirthReq = 4
    }, {
        Name = "Mastered Ultra Instinct",
        requiredValue = 14000001,
        endRange = 30000000,
        Alignment = "Good",
        rebirthReq = 6
    }, {
        Name = "God of Creation",
        requiredValue = 30000001,
        endRange = 50000000,
        Alignment = "Good",
        rebirthReq = 10
    }, {
        Name = "SSJB3",
        requiredValue = 50000001,
        endRange = 100000000,
        Alignment = "Good",
        rebirthReq = 12
    }, {
        Name = "LBSSJ4",
        requiredValue = 100000001,
        endRange = 120000001,
        Alignment = "Good",
        rebirthReq = 18
    }, {
        Name = "SSJBUI",
        requiredValue = 120000001,
        endRange = 120000002,
        Alignment = "Good",
        rebirthReq = 20
    }, {
        Name = "Beast",
        requiredValue = 120000001,
        endRange = 140000000,
        Alignment = "Neutral",
        rebirthReq = 24
    }, {
		Name = "Astral Instinct",
		requiredValue = 140000001,
		endRange = 12000000000000000000000000000000000,
		Alignment = "Neutral",
		rebirthReq = 26
	}}
}

local Quests = {{
    Name = "X Fighter Trainer",
    Nickname = "X Fighter",
    requiredValue = 0,
    endRange = 30000,
    Planet = "Earth"
}, {
    Name = "Klirin",
    Nickname = "Klirin",
    requiredValue = 30001,
    endRange = 60000,
    Planet = "Earth"
}, {
    Name = "Kid Nohag",
    Nickname = "Kid Nohag",
    requiredValue = 60001,
    endRange = 80000,
    Planet = "Earth"
}, {
    Name = "Turtle Student",
    Nickname = "Turtle Student",
    requiredValue = 80001,
    endRange = 100000,
    Planet = "Earth"
}, {
    Name = "Radish",
    Nickname = "Radish",
    requiredValue = 100001,
    endRange = 200000,
    Planet = "Earth"
}, {
    Name = "Mapa",
    Nickname = "Mapa",
    requiredValue = 200001,
    endRange = 300000,
    Planet = "Earth"
}, {
    Name = "Citizen",
    Nickname = "Evil Saya",
    requiredValue = 300001,
    endRange = 400000,
    Planet = "Earth"
}, {
    Name = "Top X Fighter",
    Nickname = "X Fighter Master",
    requiredValue = 400001,
    endRange = 750000,
    Planet = "Earth"
}, {
    Name = "Super Vegetable",
    Nickname = "Super Vegetable",
    requiredValue = 750001,
    endRange = 1000000,
    Planet = "Earth"
}, {
    Name = "Chilly",
    Nickname = "Chilly",
    requiredValue = 100001,
    endRange = 1000000,
    Planet = "Earth"
}, {
    Name = "Perfect Atom",
    Nickname = "Perfect Atom",
    requiredValue = 1000001,
    endRange = 9100000,
    Planet = "Earth"
}, {
    Name = "SSJ2 Wukong",
    Nickname = "SSJ2 Wukong",
    requiredValue = 9100001,
    endRange = 10000000,
    Planet = "Earth"
}, {
    Name = "SSJB Wukong",
    Nickname = "SSJB Wukong",
    requiredValue = 10000001,
    endRange = 30500000,
    Planet = "Earth"
}, {
    Name = "Broccoli",
    Nickname = "Broccoli",
    requiredValue = 30500001,
    endRange = 100000000,
    Planet = "Earth"
}, {
    Name = "SSJG Kakata",
    Nickname = "SSJG Kakata",
    requiredValue = 100000001,
    endRange = 120000000,
    Planet = "Earth"
}, {
    Name = "Vegetable (GoD in-training)",
    Nickname = "Vegetable (GoD in-training)",
    requiredValue = 120000001,
    endRange = 210000000,
    Planet = "Bills"
}, {
    Name = "Wukong (Omen)",
    Nickname = "Wukong (Omen)",
    requiredValue = 210000001,
    endRange = 400000000,
    Planet = "Bills"
}, {
    Name = "Vills (50%)",
    Nickname = "Vills (50%)",
    requiredValue = 400000001,
    endRange = 800000000,
    Planet = "Bills"
}, {
    Name = "Vis (20%)",
    Nickname = "Vis (20%)",
    requiredValue = 800000001,
    endRange = 1000000000,
    Planet = "Bills"
}, {
    Name = "Vegetable (LBSSJ4)",
    Nickname = "Vegetable (LBSSJ4)",
    requiredValue = 1000000001,
    endRange = 1500000000,
    Planet = "Bills"
}, {
    Name = "Wukong (LBSSJ4)",
    Nickname = "Wukong (LBSSJ4)",
    requiredValue = 1500000001,
    endRange = 2500000000,
    Planet = "Bills"
}, {
    Name = "Vekuta (LBSSJ4)",
    Nickname = "Vekuta (LBSSJ4)",
    requiredValue = 2500000001,
    endRange = 3500000000,
    Planet = "Bills"
}, {
    Name = "Wukong Rose",
    Nickname = "Wukong Rose",
    requiredValue = 3500000001,
    endRange = 4000000000,
    Planet = "Bills"
}, {
    Name = "Vekuta (SSJBUI)",
    Nickname = "Vekuta (SSJBUI)",
    requiredValue = 4000000001,
    endRange = 2000000000000000000,
    Planet = "Bills"
}}



local function teleportToBillsPlanet()
    local currentLowestStat = getCheckValue()

    if currentLowestStat >= 120000000 and game.placeId ~= 5151400895 then
        LocalPlayerData = game.ReplicatedStorage.Datas[game.Players.LocalPlayer.UserId]
        local A_1 = "Vills Planet"
        local Event = game:GetService("ReplicatedStorage").Package.Events.TP
        Event:InvokeServer(A_1)
    end

    if currentLowestStat < 120000000 and game.placeId == 5151400895 then
            local A_1 = "Earth"
            local Event = game:GetService("ReplicatedStorage").Package.Events.TP
            Event:InvokeServer(A_1)
    end
end

pcall(function() LocalPlayerName = game.Players.LocalPlayer.name end)

--Check if dead
local function DeadChecker()
    success, err = pcall(function()
        task.wait()
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
            isPlayerDead = true
            autoFarmLoopRunning = false
            isFlying = false
            isCharging = false
        elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            autoFarmLoopRunning = true
            isPlayerDead = false
            
        end
    end)
end

function startTheGame()
    pcall(function()
        repeat
            if game.workspace[LocalPlayerName] then
                task.wait()
                local Event = game:GetService("ReplicatedStorage").Package.Events.Start
                Event:InvokeServer()
                task.wait()

                local Event = game:GetService("ReplicatedStorage").Package.Events.Start
                Event:InvokeServer()

                task.wait()

                game.Players.LocalPlayer.PlayerGui.Main.bruh.Disabled = true

                game.Players.LocalPlayer.PlayerGui.Main.bruh.Disabled = false

                task.wait()
                local Event = game:GetService("ReplicatedStorage").Package.Events.Start
                Event:InvokeServer()

            end
        until game.workspace.Living[LocalPlayerName]
    end)

end
repeat
    startTheGame()
until game.workspace.Living[LocalPlayerName]

local bb = game:service 'VirtualUser'
game.Players.LocalPlayer.Idled:Connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    task.wait(2)
end)

local function getGoodQuest(Q_name, Q_nickname, indexOf)
	print(Q_name.." "..Q_nickname)
	wait(0.5)
	local target = game.workspace.Living:FindFirstChild(Q_nickname)
	if target and target.Humanoid.Health > 0 then
		return Q_name, Q_nickname
	end
	local you = game.Players.LocalPlayer
	local LocalPlayerData = game:GetService("ReplicatedStorage").Datas[you.UserId]
	local currentLowestStat = getCheckValue()
	if currentLowestStat >= minStat and LocalPlayerData.Zeni.Value < 15000 and game.placeId ~= 5151400895 then
		return "SSJG Kakata", "SSJG Kakata"
	end
	return getGoodQuest(Quests[indexOf-1].Name, Quests[indexOf-1].Nickname, indexOf - 1)
end
local function Transform()
    LocalPlayerData = game.ReplicatedStorage.Datas[game.Players.LocalPlayer.UserId]
    local formName;
    if game.Workspace.Living[LocalPlayerName].Stats.Ki.Value > 300 then
        local currentLowestStat = getCheckValue()
        local Alignment = LocalPlayerData.Allignment.Value
        local forms = FormsList[Alignment]
        local matchingFormIsFound = false 

        for _, form in ipairs(forms) do
            if currentLowestStat >= form.requiredValue and currentLowestStat <= form.endRange and form.requiredValue >=
                LocalPlayerData.Rebirth.Value then
                formName = form.Name
                matchingFormIsFound = true 
                break 
            end
        end

        if not matchingFormIsFound then
            for _, form in ipairs(forms) do
                if form.rebirthReq >= LocalPlayerData.Rebirth.Value then
                    formName = form.Name
                    break
                end
            end

        end
        local formEquipRemoteEvent = game:GetService("ReplicatedStorage").Package.Events.equipskill
        formEquipRemoteEvent:InvokeServer(formName)
        repeat
            task.wait()
            if game.Players.LocalPlayer.Status.SelectedTransformation.Value ~=
                game.Players.LocalPlayer.Status.Transformation.Value then
                game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()							
            end
        until game.Players.LocalPlayer.Status.Transformation.Value ~= nil or
            game.Workspace.Living:WaitForChild(LocalPlayerName).Stats.Ki.Value < 300
    end
end
-- Function
local attacksToStack = {"Super Dragon Fist", "God Slicer", "Spirit Barrage", "Mach Kick", "Wolf Fang Fist", "High Power Rush",
                  "Meteor Strike", "Meteor Charge", "Vital Strike", "Uppercut", "Spirit Breaking Cannon", "Vanish Strike"}

--AutoBlocking
task.spawn(function()
    while true and task.wait() do
        pcall(function()
            game.Players.LocalPlayer.Status.Blocking.Value = true
        end)
    end
end)

pcall(function()
	local event = game:GetService("ReplicatedStorage").Package.Events.drain
	local OldHook, hookmetamethod, getnamecallmethod = nil, hookmetamethod, getnamecallmethod
	OldHook = hookmetamethod(game, "__namecall", function(self, ...)
		local Got  = getnamecallmethod():lower()
		if self == event and Got == "fireserver" then
			return
		end
		return OldHook(self, ...)
	end)
end)

--AutoRebirth
task.spawn(function()
    while true do
        pcall(function()
            if enableReb then
                game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer() -- reb
            end
        end)
        task.wait(1)
    end
end)

-- Main LOOP
local selectedQuest, selectedOpponent;
while true do
    repeat
        task.wait()
        DeadChecker()
    until not isPlayerDead and enableFarm
    if not success1 then
        warn(err1)
    end

    teleportToBillsPlanet()

    repeat task.wait()
    until game.Workspace.Living:FindFirstChild(LocalPlayerName) and
    game.Workspace.Living[LocalPlayerName]:FindFirstChild("HumanoidRootPart")

    if not isPlayerDead and autoFarmLoopRunning then
        --AutoCharge
        if not isCharging then
            task.spawn(function()
                while autoFarmLoopRunning do
                    pcall(function()
                        local args = {
                            [1] = "Blacknwhite27"
                        }

                        game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
                        task.wait()
                    end)
                end
            end)
            isCharging = true
        end
        Transform() -- Makes sure to stay transformed
    end
	--Flying
    if not isFlying and not isPlayerDead and autoFarmLoopRunning then
        success, err = pcall(function()
            game.Workspace.Living:WaitForChild(LocalPlayerName)
            game.Workspace.Living[LocalPlayerName]:WaitForChild("HumanoidRootPart")
            local bv = game.Workspace.Living[LocalPlayerName].HumanoidRootPart:WaitForChild("BodyVelocity")
            local bg = game.Workspace.Living[LocalPlayerName].HumanoidRootPart:WaitForChild("BodyGyro")
            

            bg.P = 1
            bg.MaxTorque = Vector3.new(500000, 500000, 500000)
            bv.P = 1
            bv.MaxForce = Vector3.new(100000, 100000, 100000)
            isFlying = true
        end)
    end
    
	--Auto Farm Algorithm
    if not isPlayerDead and autoFarmLoopRunning then
        success, err = pcall(function()
            task.wait()
			local currentLowestStat = getCheckValue();
			local gotQuest = string.len(game:GetService("ReplicatedStorage").Datas[game.Players.LocalPlayer.UserId].Quest.Value) > 0
            if not gotQuest then
				for i, quest in ipairs(Quests) do
					if currentLowestStat >= quest.requiredValue and currentLowestStat <= quest.endRange then
						selectedQuest, selectedOpponent = getGoodQuest(quest.Name, quest.Nickname, i)
						break
					end
				end
				if game:GetService("ReplicatedStorage").Datas[game.Players.LocalPlayer.UserId].Quest.Value ~= selectedQuest then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Others.NPCs[selectedQuest].HumanoidRootPart.CFrame
					repeat
						task.wait()
						game.ReplicatedStorage.Package.Events.Qaction:InvokeServer(game:GetService("Workspace").Others.NPCs[selectedQuest])

					until game:GetService("ReplicatedStorage").Datas[game.Players.LocalPlayer.UserId].Quest.Value == selectedQuest or game.Players.LocalPlayer.Character.Humanoid.Health <= 0
				end
			end
            local LivingOpponent = game.workspace.Living:FindFirstChild(selectedOpponent)
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
            and LivingOpponent and LivingOpponent.Humanoid.Health > 0 then
                task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LivingOpponent.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
                
                task.spawn(function()
                    repeat
                        local myChar = game.Players.LocalPlayer.Character
                        myChar.HumanoidRootPart.CFrame = LivingOpponent:GetPrimaryPartCFrame() * CFrame.new(0, 0, 4)
                        task.wait()
                    until not autoFarmLoopRunning or LivingOpponent.Humanoid.Health <= 0 or
                        game.Players.LocalPlayer.Character.Humanoid.Health <= 0
                    LivingOpponent = nil
                    gotQuest = nil
                end)

                repeat
                    task.wait()
                    if currentLowestStat > 2100000 and game.Workspace.Living[LocalPlayerName].Stats.Ki.Value > 10000 then
                        repeat
                            local A_2 = "Blacknwhite27"
                            local repeats = 0
                            repeat
                                    for _, A_1 in ipairs(attacksToStack) do
                                        task.spawn(function()
                                            task.wait()
                                            game:GetService("ReplicatedStorage").Package.Events.mel:InvokeServer(A_1, A_2)
                                        end)
                                    end
                                    wait()
                                repeats = repeats + 1
                            until repeats == 10 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0
                            or LivingOpponent.Humanoid.Health <= 0
                            task.wait()
                        until not autoFarmLoopRunning or LivingOpponent.Humanoid.Health <= 0 or
                        game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or
                        game.Workspace.Living[LocalPlayerName].Stats.Ki.Value < 10000
                    else
                        task.spawn(function()
                            repeat
                                game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
                                task.wait()
                            until not autoFarmLoopRunning or LivingOpponent.Humanoid.Health <= 0 or
                                game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or
                                game.Workspace.Living[LocalPlayerName].Stats.Ki.Value > 10000 and
                                currentLowestStat > 2100000
                        end)
                        repeat
                            if game.Workspace.Living[LocalPlayerName].Stats.Ki.Value > 400 then
                                local Event =
                                    game:GetService("ReplicatedStorage").Package.Events.mel
                                local A_2 = "Blacknwhite27"
                                task.spawn(function()
                                    local A_1 = "Mach Kick"
                                    Event:InvokeServer(A_1, A_2)

                                end)
                                task.spawn(function()
                                    A_1 = "Energy Volley"
                                    A_2 = {
                                        ["FaceMouse"] = false,
                                        ["MouseHit"] = CFrame.new(15932.0273, -12.8115005,
                                            15540.2061, 0.983303905, -0.0826973468, 0.162094966,
                                            0, 0.89077127, 0.454452157, -0.181971505,
                                            -0.446864575, 0.875898659)
                                    }
                                    A_3 = "Blacknwhite27"
                                    Event =
                                        game:GetService("ReplicatedStorage").Package.Events
                                            .voleys
                                    Event:InvokeServer(A_1, A_2, A_3)

                                end)
                                task.wait(.1)
                            else

                                game:GetService("ReplicatedStorage").Package.Events.p:FireServer(
                                    "Blacknwhite27", 1)

                                task.wait()

                            end
                            task.wait()
                        until not autoFarmLoopRunning or LivingOpponent.Humanoid.Health <= 0 or
                            game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or
                            game.Workspace.Living[LocalPlayerName].Stats.Ki.Value > 10000 and
                            currentLowestStat > 2100000
                    end
                until not autoFarmLoopRunning or LivingOpponent.Humanoid.Health <= 0 or
                    game.Players.LocalPlayer.Character.Humanoid.Health <= 0
                DeadChecker()
            end
			task.wait()
        end)
        if not success then
            print(err)
        end
    end
end
