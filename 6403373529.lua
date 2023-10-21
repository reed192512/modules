if getgenv().jayyware then return end 

local HttpService = game:GetService("HttpService")
local fileName = "JAYYHUB/SETTINGS/" .. game.PlaceId .. '.txt'
getgenv().settings = {}
getgenv().jayyware = true

if isfile("JAYYHUB/SETTINGS/" .. game.PlaceId .. '.txt') then
    local sl, er = pcall(function()
        getgenv().settings = game:GetService('HttpService'):JSONDecode(readfile("JAYYHUB/SETTINGS/" .. game.PlaceId .. '.txt'))
    end)
    if er ~= nil then
        forceServerHop()
        return
    end
end 

writefile("JAYYHUB/SETTINGS/" .. game.PlaceId .. '.txt', HttpService:JSONEncode(getgenv().settings))

function forceServerHop()
    local Api = "https://games.roblox.com/v1/games/"
    local placeId, jobId = game.PlaceId, game.JobId
    local serversUrl = Api .. placeId .. "/servers/Public?sortOrder=Desc&limit=100"

    local function ListServers(cursor)
        local raw = game:HttpGet(serversUrl .. (cursor and "&cursor=" .. cursor or ""))
        return HttpService:JSONDecode(raw)
    end

    local nextCursor
    repeat
        local serversData = ListServers(nextCursor)
        for _, server in ipairs(serversData.data) do
            if server.playing < server.maxPlayers and server.id ~= jobId then
                local success, result = pcall(TeleportService.TeleportToPlaceInstance, TeleportService, placeId, server.id, LocalPlayer)
                if success then
                    break
                end
            end
        end
        nextCursor = serversData.nextPageCursor
    until not nextCursor
end

local myEvent = Instance.new("BindableEvent")
local connection = myEvent.Event:Connect(function()
end)

local function createLoop(callback)
    return spawn(function()
        while task.wait() do
            if connection.Connected == true then
                local success, result = pcall(function() 
                    callback()
                end)
            end
        end
    end)
end

createLoop(function()
    for key, value in pairs(getgenv().settings) do
	if connection.Connected == true and getgenv().settings.AutoSave == true then 
        getgenv().settings[key] = value
        writefile(fileName, HttpService:JSONEncode(getgenv().settings))
		end
    end
end)

local Fluent = loadstring(game:HttpGet("https://github.com/reed192512/jayyhubcloud/releases/download/Jayyware/jayyware.test.txt"))()
--[[ 
   premium = true
]]

local Window = Fluent:CreateWindow({
    Title = "JayyHubv2 ", "",
    SubTitle = "Where the fun begins. Powered By Jayyware. Jayy's Birthday script",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Light",
})

local Tabs = {
    Main = Window:AddTab({
        Title = "Main",
        Icon = "rbxassetid://10723424505"
    }),
   Script = Window:AddTab({
       Title = "Blade Ball",
       Icon = "rbxassetid://10723424505"
    Settings = Window:AddTab({
        Title = "Settings ",
        Icon = "settings"
    }),
        Premium = premium == "premium" and Window:AddTab({
        Title = "Premium",
        Icon = "rbxassetid://10709819149"
    }),

}

Tabs.Main:AddParagraph({
    Title = "Version",
    Content = "V.2.0.0"
})

Tabs.Main:AddParagraph({
    Title = "JayyHubv2",
    Content = "Welcome to JayyHub!\n\nWe're excited to introduce our new script hub to the server and we will be happy if u use it thank you for using.\n\nOur dedicated team is working diligently to make this script a reality. While it's ready , we're finding more scripts.\n\nStay tuned for updates, and thank you for your patience and support! https://discord.gg/BYcahVvKHP"
})

Tabs.Main:AddParagraph({
    Title = "Added",
    Content = "Scripts 4 Tab, Blade Ball Script3, Fps Booster in Settings"
})

Tabs.Main:AddParagraph({
    Title = "Removed",
    Content = "Nothing"
})


local Button =
Tabs.Script:AddButton({
    Title = "Blade Ball Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/AutoBlock"))()    
    end
})  

local Button =
Tabs.Script:AddButton({
    Title = "Blade Ball Script2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/SourceLua/main/Blade_Ball.lua"))()    
    end
})  


local Button =
Tabs.Script:AddButton({
    Title = "Blade Ball Script3",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
    end
})


local KeyBindName = getgenv().settings.KeyBind or ""

local Keybind = Tabs.Settings:AddKeybind("Keybind", {
    Title = "KeyBind",
    Mode = "Toggle",
    Default = KeyBindName,
    ChangedCallback = function(New)
        KeyBindName = New.Name
        getgenv().settings.KeyBind = New.Name  
    end
})

local Button =
Tabs.Settings:AddButton({
    Title = "Fps Booster",
    Callback = function() 
        _G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://pastebin.com/raw/Wd75Z6GV"))()
    end
})

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    local settingsKeyBind = getgenv().settings.KeyBind

    if input.KeyCode == Enum.KeyCode.Home or settingsKeyBind == input.KeyCode.Name then
        if game:GetService("CoreGui").ScreenGui.Frame.Visible then
            Fluent:Notify({Title = 'Window Minimized', Content = 'Press ' .. settingsKeyBind .. ' to Open the UI', Duration = 5 })
        end
        Window:Minimize() 
    end
end)

local Toggle = Tabs.Settings:AddToggle("Toggle", {
    Title = "Auto Save Settings",
    Default = getgenv().settings.AutoSave,
    Callback = function(value)
        getgenv().settings.AutoSave = value
        writefile(fileName, HttpService:JSONEncode(getgenv().settings))
    end
})

local Toggle = Tabs.Settings:AddToggle("Toggle", {
    Title = "Auto ReExecute",
    Default = getgenv().settings.AutoExecute,
    Callback = function(value)
    getgenv().settings.AutoExecute = value
     if getgenv().settings.AutoExecute then
            local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
            if queueteleport then
                queueteleport('loadstring(game:HttpGet("https://pastebin.com/raw/7hDvLt1b"))()')
            end
        end
    end
})

local Toggle = Tabs.Settings:AddToggle("Toggle", {
   Title = "Auto Rejoin",
   Default = getgenv().settings.AutoRejoin,
   Callback = function(value)
      getgenv().settings.AutoRejoin = value
      if getgenv().settings.AutoRejoin then
          Fluent:Notify({Title = 'Auto Rejoin', Content = 'You will rejoin if you are kicked or disconnected from the game', Duration = 5 })
          repeat task.wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
          local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
          po.ChildAdded:connect(function(a)
              if a.Name == 'ErrorPrompt' then
                  while true do
                      ts:Teleport(game.PlaceId)
                      task.wait(2)
                  end
              end
          end)
      end
  end
})

Tabs.Settings:AddButton({
    Title = "Rejoin-Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
    end
})

Tabs.Settings:AddButton({
    Title = "Server-Hop", 
    Callback = function()
       local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        local _place,_id = game.PlaceId, game.JobId
        local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
        local function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
            return Http:JSONDecode(Raw)
        end
        local Next; repeat
            local Servers = ListServers(Next)
            for i,v in next, Servers.data do
                if v.playing < v.maxPlayers and v.id ~= _id then
                    local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
                    if s then break end
                end
            end
            Next = Servers.nextPageCursor
        until not Next
    end
})

Window:SelectTab(1)