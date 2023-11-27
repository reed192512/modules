local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "JayyHubv2 Picker Cart Ride into Rdite", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "JayyHubv2 / Vixtro Hub",
	Callback = function()
      		print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/reed192512/JayyHub/main/nt"))()
  	end    
})

Tab:AddButton({
	Name = "JayyHubv2 / Evonix Hub",
	Callback = function()
      		print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/reed192512/JayyHub/main/hello.txt"))()
  	end    
})

OrionLib:Init()





