--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.16) ~  Much Love, Ferib 

]]--

local a = Instance.new("\x42\x69\x6E\x64\x61\x62\x6C\x65\x45\x76\x65\x6E\x74");
local i = a.Event:Connect(function()
end);
local _ = game:GetService("\x48\x74\x74\x70\x53\x65\x72\x76\x69\x63\x65");
local _ = game:GetService("\x54\x65\x6C\x65\x70\x6F\x72\x74\x53\x65\x72\x76\x69\x63\x65");
local b = game:GetService("\x50\x6C\x61\x79\x65\x72\x73");
local e = b.LocalPlayer;
local _ = e.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64\x52\x6F\x6F\x74\x50\x61\x72\x74");
spawn(function()
	while wait() do
		if (getgenv().Disconnect == true) then
			i:Disconnect();
			getgenv().Disconnect = false;
			getgenv().nexus = false;
			return;
		else
			a:Fire();
		end
	end
end);
local function _()
	local a = game.Players.LocalPlayer;
	local _ = a.Backpack;
	for _, _ in pairs(_:GetChildren()) do
		if _:IsA("\x54\x6F\x6F\x6C") then
			_.Parent = a.Character;
		end
	end
end
local g = loadstring(game:HttpGet("\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x73\x2D\x6F\x2D\x61\x2D\x62\x2F\x6E\x65\x78\x75\x73\x2F\x72\x65\x6C\x65\x61\x73\x65\x73\x2F\x64\x6F\x77\x6E\x6C\x6F\x61\x64\x2F\x6E\x65\x78\x75\x73\x2F\x6E\x65\x78\x75\x73\x2E\x74\x78\x74"))();
local f = loadstring(game:HttpGet("\x68\x74\x74\x70\x73\x3A\x2F\x2F\x72\x61\x77\x2E\x67\x69\x74\x68\x75\x62\x75\x73\x65\x72\x63\x6F\x6E\x74\x65\x6E\x74\x2E\x63\x6F\x6D\x2F\x73\x2D\x6F\x2D\x61\x2D\x62\x2F\x6E\x65\x78\x75\x73\x2F\x6D\x61\x69\x6E\x2F\x61\x73\x73\x65\x74\x73\x2F\x53\x61\x76\x65\x4D\x61\x6E\x61\x67\x65\x72"))();
local c = loadstring(game:HttpGet("\x68\x74\x74\x70\x73\x3A\x2F\x2F\x72\x61\x77\x2E\x67\x69\x74\x68\x75\x62\x75\x73\x65\x72\x63\x6F\x6E\x74\x65\x6E\x74\x2E\x63\x6F\x6D\x2F\x73\x2D\x6F\x2D\x61\x2D\x62\x2F\x6E\x65\x78\x75\x73\x2F\x6D\x61\x69\x6E\x2F\x61\x73\x73\x65\x74\x73\x2F\x49\x6E\x74\x65\x72\x66\x61\x63\x65\x4D\x61\x6E\x61\x67\x65\x72"))();
local j = g.Options;
f:SetLibrary(g);
local h = g:CreateWindow({Title="JayyHubv2","",SubTitle="Where the fun begins.  Powered By Jayyware. Jayy's Birthday script",TabWidth=160,Size=UDim2.fromOffset(580, 460),Acrylic=true,Theme="\x44\x61\x72\x6B"});
local k = {Main=h:AddTab({Title="\x4D\x61\x69\x6E",Icon="\x72\x62\x78\x61\x73\x73\x65\x74\x69\x64\x3A\x2F\x2F\x31\x30\x37\x32\x33\x34\x30\x35\x36\x34\x39"}),Anti=h:AddTab({Title="\x41\x6E\x74\x69\x2D\x53\x74\x75\x66\x66",Icon="\x72\x62\x78\x61\x73\x73\x65\x74\x69\x64\x3A\x2F\x2F\x31\x30\x37\x32\x33\x34\x30\x36\x32\x39\x39"}),Player=h:AddTab({Title="\x50\x6C\x61\x79\x65\x72",Icon="\x72\x62\x78\x61\x73\x73\x65\x74\x69\x64\x3A\x2F\x2F\x31\x30\x37\x34\x37\x33\x37\x33\x31\x37\x36"}),Premium=((premium == "\x70\x72\x65\x6D\x69\x75\x6D") and h:AddTab({Title="\x50\x72\x65\x6D\x69\x75\x6D",Icon="\x72\x62\x78\x61\x73\x73\x65\x74\x69\x64\x3A\x2F\x2F\x31\x30\x37\x30\x39\x38\x31\x39\x31\x34\x39"})),Server=h:AddTab({Title="\x53\x65\x72\x76\x65\x72",Icon="\x72\x62\x78\x61\x73\x73\x65\x74\x69\x64\x3A\x2F\x2F\x31\x30\x37\x33\x34\x39\x34\x39\x38\x35\x36"}),Settings=h:AddTab({Title="\x53\x65\x74\x74\x69\x6E\x67\x73",Icon="\x72\x62\x78\x61\x73\x73\x65\x74\x69\x64\x3A\x2F\x2F\x31\x30\x37\x33\x34\x39\x35\x30\x30\x32\x30"})};
local _ = k.Main:AddToggle("\x4B\x69\x6C\x6C\x41\x75\x72\x61", {Title="\x53\x6C\x61\x70\x20\x41\x75\x72\x61",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait(0.1);
			local _, _ = pcall(function()
				local d = game:GetService("\x50\x6C\x61\x79\x65\x72\x73");
				local a = game:GetService("\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x53\x74\x6F\x72\x61\x67\x65");
				local e = d.LocalPlayer;
				local b = tonumber(j.SlapAura.Value);
				local function c()
					return e.Backpack:FindFirstChildOfClass("\x54\x6F\x6F\x6C") or e.Character:FindFirstChildOfClass("\x54\x6F\x6F\x6C");
				end
				local function _()
					local b = c();
					if b then
						for _, _ in pairs(getgc()) do
							if ((type(_) == "\x66\x75\x6E\x63\x74\x69\x6F\x6E") and (getfenv(_).script == b:FindFirstChild("\x4C\x6F\x63\x61\x6C\x53\x63\x72\x69\x70\x74"))) then
								local b = debug.getconstants(_);
								for _, _ in pairs(b) do
									if (_ == "\x69\x73\x49\x6E\x41\x72\x65\x6E\x61") then
										for _, b in pairs(b) do
											for _, _ in pairs(a:GetChildren()) do
												if (_:IsA("\x52\x65\x6D\x6F\x74\x65\x45\x76\x65\x6E\x74") and (_.Name == b)) then
													getgenv().hitRemote = _;
												end
											end
										end
									end
								end
							end
						end
					end
				end
				_();
				for _, _ in pairs(d:GetPlayers()) do
					if (_ ~= e) then
						local _ = _.Character;
						if _ then
							local _ = _:FindFirstChildWhichIsA("\x42\x61\x73\x65\x50\x61\x72\x74");
							if (e:DistanceFromCharacter(_.Position) <= b) then
								hitRemote:FireServer(_);
							end
						end
					end
				end
			end);
		until not j.KillAura.Value or not i.Connected 
	end
end});
local _ = k.Main:AddSlider("\x53\x6C\x61\x70\x41\x75\x72\x61", {Title="\x53\x6C\x61\x70\x20\x41\x75\x72\x61\x20\x44\x69\x73\x74\x61\x6E\x63\x65",Default=15,Min=15,Max=30,Rounding=0,Callback=function(_)
end});
local _ = k.Main:AddToggle("\x41\x75\x74\x6F\x41\x75\x72\x61", {Title="\x52\x68\x79\x74\x68\x6D\x20\x41\x75\x72\x61",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait(0.1);
			game:GetService("\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x53\x74\x6F\x72\x61\x67\x65"):WaitForChild("\x72\x68\x79\x74\x68\x6D\x65\x76\x65\x6E\x74"):FireServer("\x41\x6F\x65\x45\x78\x70\x6C\x6F\x73\x69\x6F\x6E", 0);
		until not j.AutoAura.Value or not i.Connected 
	end
end});
local _ = k.Main:AddToggle("\x41\x75\x74\x6F\x4E\x75\x6C\x6C", {Title="\x41\x75\x74\x6F\x20\x4E\x75\x6C\x6C\x73",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait(0.1);
			game:GetService("\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x53\x74\x6F\x72\x61\x67\x65").NullAbility:FireServer();
		until not j.AutoNull.Value or not i.Connected 
	end
end});
local _ = k.Main:AddToggle("\x41\x75\x74\x6F\x45\x6E\x74\x65\x72", {Title="\x41\x75\x74\x6F\x20\x45\x6E\x74\x65\x72\x20\x41\x72\x65\x6E\x61",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait(0.1);
			local _, _ = pcall(function()
				if (not game.Players.LocalPlayer.Character:FindFirstChild("\x65\x6E\x74\x65\x72\x65\x64") and game.Players.LocalPlayer.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64\x52\x6F\x6F\x74\x50\x61\x72\x74")) then
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("\x48\x65\x61\x64"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0);
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("\x48\x65\x61\x64"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1);
				end
			end);
		until not j.AutoEnter.Value or not i.Connected 
	end
end});
local _ = k.Settings:AddToggle("\x53\x65\x74\x74\x69\x6E\x67\x73", {Title="\x53\x61\x76\x65\x20\x53\x65\x74\x74\x69\x6E\x67\x73",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			f:Save(game.PlaceId);
		until not j.Settings.Value or not i.Connected 
	end
end});
local function a(_)
	local a = e.Character and e.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64");
	if a then
		a.WalkSpeed = _;
	end
end
local _ = k.Anti:AddToggle("\x41\x6E\x74\x69\x53\x74\x75\x6E", {Title="\x41\x6E\x74\x69\x20\x53\x74\x75\x6E",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			local _, _ = pcall(function()
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false;
			end);
		until not j.AntiStun.Value or not i.Connected 
	end
end});
local _ = k.Anti:AddToggle("\x41\x6E\x74\x69\x4D\x61\x69\x6C", {Title="\x41\x6E\x74\x69\x20\x4D\x61\x69\x6C",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(_)
				if (_.Name == "\x4D\x61\x69\x6C\x50\x6F\x70\x75\x70") then
					_.Frame.Visible = false;
					task.wait();
					game.Players.LocalPlayer.Character.Head.MailIcon:Destroy();
				end
			end);
		until not j.AntiMail.Value or not i.Connected 
		game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(_)
			if (_.Name == "\x4D\x61\x69\x6C\x50\x6F\x70\x75\x70") then
				_.Frame.Visible = true;
				task.wait();
			end
		end);
	end
end});
local _ = k.Anti:AddToggle("\x41\x6E\x74\x69\x42\x6F\x6F\x73\x74", {Title="\x41\x6E\x74\x69\x20\x42\x6F\x6F\x73\x74\x65\x72",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("\x42\x6F\x6F\x73\x74\x65\x72\x4F\x62\x6A\x65\x63\x74", 1) then
				game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("\x42\x6F\x6F\x73\x74\x65\x72\x4F\x62\x6A\x65\x63\x74", 1):Destroy();
			end
			game.Workspace[game.Players.LocalPlayer.Name].DescendantAdded:Connect(function(_)
				if (antiBooster == true) then
					if (_.Name == "\x42\x6F\x6F\x73\x74\x65\x72\x4F\x62\x6A\x65\x63\x74") then
						task.wait(0.1);
						_:Destroy();
					end
				end
			end);
		until not j.AntiBoost.Value or not i.Connected 
	end
end});
local _ = k.Anti:AddToggle("\x41\x6E\x74\x69\x50\x75\x73\x68", {Title="\x41\x6E\x74\x69\x20\x50\x75\x73\x68\x65\x72",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			for _, _ in pairs(game.Workspace:GetChildren()) do
				if (_.Name == "\x77\x61\x6C\x6C") then
					_.CanCollide = false;
				end
			end
		until not j.AntiPush.Value or not i.Connected 
	end
end});
local _ = k.Anti:AddToggle("\x41\x6E\x74\x69\x52\x65\x61\x70\x65\x72", {Title="\x41\x6E\x74\x69\x20\x52\x65\x61\x70\x65\x72",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			for _, _ in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if (_.Name == "\x44\x65\x61\x74\x68\x4D\x61\x72\x6B") then
					game:GetService("\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x53\x74\x6F\x72\x61\x67\x65").ReaperGone:FireServer(game:GetService("\x50\x6C\x61\x79\x65\x72\x73").LocalPlayer.Character.DeathMark);
					game:GetService("\x4C\x69\x67\x68\x74\x69\x6E\x67"):WaitForChild("\x44\x65\x61\x74\x68\x4D\x61\x72\x6B\x43\x6F\x6C\x6F\x72\x43\x6F\x72\x72\x65\x63\x74\x69\x6F\x6E"):Destroy();
				end
			end
		until not j.AntiReaper.Value or not i.Connected 
	end
end});
local _ = k.Anti:AddToggle("\x41\x6E\x74\x69\x5A\x61", {Title="\x41\x6E\x74\x69\x20\x5A\x61\x20\x48\x61\x6E\x64\x6F",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			for _, _ in pairs(game.Workspace:GetChildren()) do
				if (_:IsA("\x50\x61\x72\x74") and (_.Name == "\x50\x61\x72\x74")) then
					_:Destroy();
				end
			end
		until not j.AntiZa.Value 
	end
end});
local _ = k.Anti:AddToggle("\x41\x6E\x74\x69\x4A\x61\x63\x6B", {Title="\x41\x6E\x74\x69\x20\x48\x61\x6C\x6C\x6F\x77\x2D\x4A\x61\x63\x6B",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true;
		until not j.AntiJack.Value or not i.Connected 
		game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = false;
	end
end});
local _ = k.Main:AddToggle("\x41\x6E\x74\x69\x56\x6F\x69\x64", {Title="\x41\x6E\x74\x69\x2D\x56\x6F\x69\x64",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			for _, _ in pairs(game.Workspace:GetDescendants()) do
				if ((_.Name == "\x64\x65\x64\x42\x61\x72\x72\x69\x65\x72") or (_.Name == "\x41\x72\x65\x6E\x61\x42\x61\x72\x72\x69\x65\x72") or (_.Name == "\x44\x45\x41\x54\x48\x42\x41\x52\x52\x49\x45\x52") or (_.Name == "\x44\x45\x41\x54\x48\x42\x41\x52\x52\x49\x45\x52\x32")) then
					_.CanCollide = true;
				end
			end
		until not j.AntiVoid.Value or not i.Connected 
		for _, _ in pairs(game.Workspace:GetDescendants()) do
			if ((_.Name == "\x64\x65\x64\x42\x61\x72\x72\x69\x65\x72") or (_.Name == "\x41\x72\x65\x6E\x61\x42\x61\x72\x72\x69\x65\x72") or (_.Name == "\x44\x45\x41\x54\x48\x42\x41\x52\x52\x49\x45\x52") or (_.Name == "\x44\x45\x41\x54\x48\x42\x41\x52\x52\x49\x45\x52\x32")) then
				_.CanCollide = false;
			end
		end
	end
end});
local _ = k.Main:AddToggle("\x41\x6E\x74\x69\x72\x61\x67\x64\x6F\x6C\x6C", {Title="\x41\x6E\x74\x69\x20\x52\x61\x67\x64\x6F\x6C\x6C",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			local _ = game.Players.LocalPlayer.Character;
			if (_ and _:FindFirstChild("\x52\x61\x67\x64\x6F\x6C\x6C\x65\x64")) then
				_:WaitForChild("\x52\x61\x67\x64\x6F\x6C\x6C\x65\x64").Changed:Connect(function()
					if (_:WaitForChild("\x52\x61\x67\x64\x6F\x6C\x6C\x65\x64").Value == true) then
						repeat
							task.wait();
							_.Torso.Anchored = true;
						until (_:FindFirstChild("\x54\x6F\x72\x73\x6F") == nil) or (_:WaitForChild("\x52\x61\x67\x64\x6F\x6C\x6C\x65\x64").Value == false) or not j.Antiragdoll.Value or not i.Connected 
						_.Torso.Anchored = false;
					end
				end);
			end
		until not j.Antiragdoll.Value or not i.Connected 
	end
end});
local _ = k.Player:AddToggle("\x57\x61\x6C\x6B\x53\x70\x65\x65\x64", {Title="\x57\x61\x6C\x6B\x73\x70\x65\x65\x64",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			a(j.Walk.Value);
		until not j.WalkSpeed.Value or not i.Connected 
		a(20);
	end
end});
local _ = k.Player:AddSlider("\x57\x61\x6C\x6B", {Title="\x57\x61\x6C\x6B\x20\x53\x70\x65\x65\x64",Default=20,Min=20,Max=70,Rounding=0,Callback=function(_)
end});
local function a(_)
	local a = e.Character and e.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64");
	if a then
		a.JumpPower = _;
	end
end
local _ = k.Player:AddToggle("\x4A\x75\x6D\x70\x50\x6F\x77\x65\x72", {Title="\x4A\x75\x6D\x70\x20\x50\x6F\x77\x65\x72",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			a(j.Jump.Value);
		until not j.JumpPower.Value or not i.Connected 
		a(50);
	end
end});
local _ = k.Player:AddSlider("\x4A\x75\x6D\x70", {Title="\x4A\x75\x6D\x70\x20\x50\x6F\x77\x65\x72",Default=50,Min=50,Max=200,Rounding=0,Callback=function(_)
end});
local _ = k.Player:AddToggle("\x44\x65\x74\x65\x63\x74\x6F\x72", {Title="\x4D\x6F\x64\x65\x72\x61\x74\x6F\x72\x20\x44\x65\x74\x65\x63\x74\x6F\x72",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			ModeratorChecker();
		until not j.Detector.Value or not i.Connected 
	end
end});
local _ = k.Player:AddDropdown("\x53\x65\x6C\x65\x63\x74\x65\x64\x46\x75\x6E\x63\x74\x69\x6F\x6E", {Title="\x44\x65\x74\x65\x63\x74\x69\x6F\x6E\x20\x46\x75\x6E\x63\x74\x69\x6F\x6E",Values={"\x4E\x6F\x74\x69\x66\x79","\x4B\x69\x63\x6B"},Multi=false,Default=false,Callback=function(_)
end});
local a = 9950771;
local d = {};
local _ = {"\x4F\x77\x6E\x65\x72","\x4F\x56\x45\x52\x53\x45\x45\x52","\x44\x65\x76\x65\x6C\x6F\x70\x65\x72","\x53\x74\x61\x66\x66\x20\x53\x75\x70\x65\x72\x76\x69\x73\x6F\x72","\x53\x65\x6E\x69\x6F\x72\x20\x53\x74\x61\x66\x66","\x53\x74\x61\x66\x66","\x4A\x75\x6E\x69\x6F\x72\x20\x53\x74\x61\x66\x66","\x54\x72\x61\x69\x6C\x20\x53\x74\x61\x66\x66","\x54\x65\x73\x74\x65\x72","\x4D\x6F\x64\x65\x6C\x6C\x65\x72","\x50\x72\x6F\x20\x53\x75\x70\x70\x6F\x72\x74\x65\x72","\x45\x61\x72\x6C\x79\x20\x53\x75\x70\x70\x6F\x72\x74\x65\x72"};
function getRoleInGroup(a, _)
	local a, _ = pcall(function()
		return a:GetRoleInGroup(_);
	end);
	return (a and _) or "\x4E\x6F\x74\x20\x69\x6E\x20\x74\x68\x65\x20\x67\x72\x6F\x75\x70";
end
function sendRoleMessage(b, a)
	for _, _ in ipairs(_) do
		if (a == _) then
			local _ = b.Name .. "\x20\x48\x61\x73\x20\x4A\x6F\x69\x6E\x65\x64\x20\x52\x6F\x6C\x65\x3A\x20" .. a;
			local a = tick();
			if (not d[b] or ((a - d[b]) >= 10)) then
				if (j.SelectedFunction.Value == "\x4B\x69\x63\x6B") then
					game.Players.LocalPlayer:kick(_);
				elseif (j.SelectedFunction.Value == "\x4E\x6F\x74\x69\x66\x79") then
					g:Notify({Title="\x4D\x6F\x64\x65\x72\x61\x74\x6F\x72",Content=_,Duration=10});
					d[b] = a;
				end
			end
		end
	end
end
function ModeratorChecker()
	for _, b in ipairs(b:GetPlayers()) do
		if (b ~= e) then
			local _ = getRoleInGroup(b, a);
			sendRoleMessage(b, _);
		end
	end
end
k.Settings:AddButton({Title="\x44\x65\x6C\x65\x74\x65\x20\x53\x65\x74\x74\x69\x6E\x67\x20\x43\x6F\x6E\x66\x69\x67",Callback=function()
	delfile("\x46\x4C\x4F\x52\x45\x4E\x43\x45\x2F\x73\x65\x74\x74\x69\x6E\x67\x73\x2F" .. game.PlaceId .. "\x2E\x6A\x73\x6F\x6E");
end});
local _ = k.Server:AddToggle("\x41\x75\x74\x6F\x52\x65\x6A\x6F\x69\x6E", {Title="\x41\x75\x74\x6F\x20\x52\x65\x6A\x6F\x69\x6E",Default=false,Callback=function(_)
	if _ then
		g:Notify({Title="\x41\x75\x74\x6F\x20\x52\x65\x6A\x6F\x69\x6E",Content="\x59\x6F\x75\x20\x77\x69\x6C\x6C\x20\x72\x65\x6A\x6F\x69\x6E\x20\x69\x66\x20\x79\x6F\x75\x20\x61\x72\x65\x20\x6B\x69\x63\x6B\x65\x64\x20\x6F\x72\x20\x64\x69\x73\x63\x6F\x6E\x6E\x65\x63\x74\x65\x64\x20\x66\x72\x6F\x6D\x20\x74\x68\x65\x20\x67\x61\x6D\x65",Duration=5});
		repeat
			task.wait();
			local _, _, a = game:GetService("\x50\x6C\x61\x79\x65\x72\x73").LocalPlayer, game.CoreGui.RobloxPromptGui.promptOverlay, game:GetService("\x54\x65\x6C\x65\x70\x6F\x72\x74\x53\x65\x72\x76\x69\x63\x65");
			_.ChildAdded:connect(function(_)
				if (_.Name == "\x45\x72\x72\x6F\x72\x50\x72\x6F\x6D\x70\x74") then
					a:Teleport(game.PlaceId);
					task.wait(2);
				end
			end);
		until j.AutoRejoin.Value or not i.Connected 
	end
end});
local _ = k.Server:AddToggle("\x52\x65\x45\x78\x65\x63\x75\x74\x65", {Title="\x41\x75\x74\x6F\x20\x52\x65\x45\x78\x65\x63\x75\x74\x65",Default=false,Callback=function(_)
	if _ then
		repeat
			task.wait();
			local _ = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport);
			if _ then
				_("\x6C\x6F\x61\x64\x73\x74\x72\x69\x6E\x67\x28\x67\x61\x6D\x65\x3A\x48\x74\x74\x70\x47\x65\x74\x28\x22\x68\x74\x74\x70\x73\x3A\x2F\x2F\x72\x61\x77\x2E\x67\x69\x74\x68\x75\x62\x75\x73\x65\x72\x63\x6F\x6E\x74\x65\x6E\x74\x2E\x63\x6F\x6D\x2F\x31\x33\x42\x38\x42\x2F\x6E\x65\x78\x75\x73\x2F\x6D\x61\x69\x6E\x2F\x6C\x6F\x61\x64\x73\x74\x72\x69\x6E\x67\x22\x29\x29\x28\x29");
			end
		until not j.ReExecute.Value or not i.Connected 
	end
end});
k.Server:AddButton({Title="\x52\x65\x6A\x6F\x69\x6E\x2D\x53\x65\x72\x76\x65\x72",Callback=function()
	game:GetService("\x54\x65\x6C\x65\x70\x6F\x72\x74\x53\x65\x72\x76\x69\x63\x65"):Teleport(game.PlaceId, Player);
end});
k.Server:AddButton({Title="\x53\x65\x72\x76\x65\x72\x2D\x48\x6F\x70",Callback=function()
	local c = game:GetService("\x48\x74\x74\x70\x53\x65\x72\x76\x69\x63\x65");
	local d = game:GetService("\x54\x65\x6C\x65\x70\x6F\x72\x74\x53\x65\x72\x76\x69\x63\x65");
	local _ = "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x61\x6D\x65\x73\x2E\x72\x6F\x62\x6C\x6F\x78\x2E\x63\x6F\x6D\x2F\x76\x31\x2F\x67\x61\x6D\x65\x73\x2F";
	local e, b = game.PlaceId, game.JobId;
	local _ = _ .. e .. "\x2F\x73\x65\x72\x76\x65\x72\x73\x2F\x50\x75\x62\x6C\x69\x63\x3F\x73\x6F\x72\x74\x4F\x72\x64\x65\x72\x3D\x44\x65\x73\x63\x26\x6C\x69\x6D\x69\x74\x3D\x31\x30\x30";
	local function a(a)
		local _ = game:HttpGet(_ .. ((a and ("\x26\x63\x75\x72\x73\x6F\x72\x3D" .. a)) or ""));
		return c:JSONDecode(_);
	end
	local c;
	repeat
		local _ = a(c);
		for _, _ in next, _.data do
			if ((_.playing < _.maxPlayers) and (_.id ~= b)) then
				local a, _ = pcall(d.TeleportToPlaceInstance, d, e, _.id, Player);
				if a then
					break;
				end
			end
		end
		c = _.nextPageCursor;
	until not c 
end});
f:SetLibrary(g);
c:SetLibrary(g);
f:SetIgnoreIndexes({});
f:IgnoreThemeSettings();
c:SetFolder("\x46\x4C\x4F\x52\x45\x4E\x43\x45");
f:SetFolder("\x46\x4C\x4F\x52\x45\x4E\x43\x45");
c:BuildInterfaceSection(k.Settings, k.Premium);
f:Load(game.PlaceId);
h:SelectTab(1);