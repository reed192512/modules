---------- JayyHubv2 ----------

-- Configuration
local Config = {
    WindowName = "JayyHubv2",
	Color = Color3.fromRGB(124,7,7),
	Keybind = Enum.KeyCode.RightBracket
}

---------------------------------------

-- Check if Hub is Already Loaded
if game:GetService("CoreGui"):FindFirstChild(Config.WindowName) ~= nil then
    game:GetService("CoreGui"):FindFirstChild(Config.WindowName):Destroy()
end

---------------------------------------

-- Loadstrings
local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/Cheater.FunAreLeeches!"))()
local Library = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-BracketV3-Edited-6518"))()

---------------------------------------

-- Variables
local player = game:GetService("Players").LocalPlayer
local HumanoidRootPart = player.Character.HumanoidRootPart
local TrashPiles = 0
local currentpos = nil

---------------------------------------

-- Create UI
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

---------------------------------------

-- Add Tab
local Main = Window:CreateTab("Main Menu")
local Teleport = Window:CreateTab("Teleport Menu")
local Tab2 = Window:CreateTab("UI Settings")

---------------------------------------

-- Create Sections
local Spazz = Main:CreateSection("Spazz Features")
local Janitor = Main:CreateSection("Cleaning")
local Editing = Main:CreateSection("Park Info Editing")
local TP = Teleport:CreateSection("Players")
local MenuSection = Tab2:CreateSection("Menu")
local BackgroundSection = Tab2:CreateSection("Background")
---------------------------------------

-- Functions
function Clean(plr)
    notify("Cleaning", "Cleaning Park")
    for _, x in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
        if x.Name == "OwnerName" and x.Value == tostring(plr) then
            local b = tostring(x.Parent)
            b = tonumber(b)
            game:GetService("ReplicatedStorage").Communication.SReplicateCleaningState:FireServer(b, true)
            for _, c in pairs(x.Parent.Trash:GetChildren()) do
            TrashPiles = TrashPiles + 1
            game:GetService("ReplicatedStorage").Communication.SSetCleaningState:InvokeServer(c, 1)     
            end
        end
    end
    game:GetService("ReplicatedStorage").Communication.SReplicateCleaningState:FireServer(0, false)
    notify("Cleaning", "Cleaned up ".. TrashPiles .. " trash piles")
    TrashPiles = 0    
end
---------------------------------------
function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

-- Script Start
local CleanParkButton = Spazz:CreateToggle("Visual Lag",nil,function(t)
    getgenv().aye = t
    currentpos = HumanoidRootPart.CFrame
end)
------------
local CleanParkButton = Janitor:CreateButton("Clean Park", function()
    Clean(player)
end)

for _, x in pairs(game:GetService("Players"):GetChildren()) do
    if x.Name ~= player.Name then
        local CleanParkButtonPlayers = Janitor:CreateButton("Clean "..x.Name.."'s Park", function()
            Clean(x)
        end)
    end
end
------------
for _, x in pairs(game:GetService("Players"):GetChildren()) do
    if x.Name ~= player.Name then
        local Button2 = TP:CreateButton("Teleport To:\n"..x.Name, function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame
        end)
    end
end
------------
local EditClickName = Editing:CreateTextBox("Park Name","Park Name",false,function(Value)
    print(Value)
    game:GetService("ReplicatedStorage").Communication.SEditTycoonParam:FireServer("name", Value)
    notify("Name", "Changed to: "..Value)
end)
------------
local cursortext = MenuSection:CreateLabel("Cursor is: Hidden")
local fixcursor = MenuSection:CreateToggle("Show Cursor",nil,function(state)
    getgenv().fix = state
end)
------------
local Toggle3 = MenuSection:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
------------
local CloseUI = MenuSection:CreateButton("Destroy UI",function()
    game:GetService("CoreGui"):FindFirstChild(Config.WindowName):Destroy()    
end)
------------
local Colorpicker3 = MenuSection:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)
------------
-- credits to jan for patterns
local Dropdown3 = BackgroundSection:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral","xbGuard"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	elseif Name == "xbGuard" then
	    Window:SetBackground("11310622169")
	end
end)
Dropdown3:SetOption("Lace With Flowers")
------------
local Colorpicker4 = BackgroundSection:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.fromRGB(124,7,7))
------------
local Slider3 = BackgroundSection:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)
------------
local Slider4 = BackgroundSection:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)
------------
while true do 
    task.wait(0.01)
    if getgenv().fix == true then
        game:GetService("UserInputService").MouseIconEnabled = true
        cursortext:UpdateText("Cursor is: Showing")
    else
        game:GetService("UserInputService").MouseIconEnabled = false
        cursortext:UpdateText("Cursor is: Hidden")
    end
    
    if getgenv().aye == true then
        HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + Vector3.new(math.random(1,3),math.random(-1,1),math.random(1,3))
        task.wait(math.random(1,5))
        HumanoidRootPart.CFrame = currentpos
        task.wait(math.random(1,5))
        currentpos = HumanoidRootPart.CFrame
    end
end
------------