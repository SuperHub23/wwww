if game.PlaceId == 286090429 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Arsenal Script Hub - Arsenal", HidePremium = false,IntroEnabled = "Arsenal Hub", SaveConfig = true, ConfigFolder = "ArsenalConfig"})


-- Tabs
local AimbotTab = Window:MakeTab({
    Name = "Aimbot",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


-- Tabs
local EspTab = Window:MakeTab({
    Name = "Esp",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Toggles
AimbotTab:AddToggle({
    Name = "Aimbot!",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})


Tab:AddButton({
	Name = "ESP",
	Callback = function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
      		print("button pressed")
  	end    
})

-- Toggles
AimbotTab:AddToggle({
    Name = "Fov Size!",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})

AimbotTab:AddSlider({
	Name = "Fov Scale",
	Min = 0,
	Max = 150,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "1 out of 150",
	Callback = function(Value)
		print(Value)
	end    
})

-- Tabs
local PlayerTab = Window:MakeTab({
    Name = "PlayerTab",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Toggles
EspTab:AddToggle({
    Name = "Box Esp",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})

PlayerTab:AddSlider({
	Name = "Speed Scale",
	Min = 0,
	Max = 150,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "1 out of 150",
	Callback = function(Value)
        getgenv().WalkSpeedValue = Value; --Enter your speed amount here
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        print(Value)
		print(Value)
	end    
})

PlayerTab:AddSlider({
	Name = "Jump Scale",
	Min = 0,
	Max = 150,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "1 out of 150",
	Callback = function(Value)
		print(Value)
	end    
})

-- Toggles
PlayerTab:AddToggle({
    Name = "Fly",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})

PlayerTab:AddSlider({
	Name = "Fly Speed",
	Min = 0,
	Max = 150,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "1 out of 150",
	Callback = function(Value)
		print(Value)
	end    
})

-- Tabs
local AutoSprayTab = Window:MakeTab({
    Name = "AutoSpray",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Toggles
AutoSprayTab:AddToggle({
    Name = "AutoSpray",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})

-- Toggles
AutoSprayTab:AddToggle({
    Name = "RGB Gun",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})   

-- Toggles
AutoSprayTab:AddToggle({
    Name = "Inf Ammo",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})  



    
end
OrionLib:Init()
