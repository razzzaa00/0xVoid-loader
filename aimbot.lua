-- 0xVoid Aimbot | From Faded.yarts Source | razzzaa00
getgenv().Aimbot_Enabled = getgenv().Aimbot_Enabled or false

if getgenv().Aimbot_Enabled then
    local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
    Aimbot.Settings.Enabled = true
    
    -- FOV
    CombatTab:AddSlider("aim_fov", {Title = "FOV Radius", Min = 0, Max = 720, Default = 120}, function(v)
        Aimbot.FOVSettings.Radius = v
    end)
    
    -- Smoothing
    CombatTab:AddSlider("aim_smooth", {Title = "Smoothing", Min = 0, Max = 1, Default = 0.1}, function(v)
        Aimbot.Settings.Sensitivity = v
    end)
    
    -- Resolver
    CombatTab:AddToggle("aim_resolver", {Title = "Resolver", Default = true}, function(v)
        Aimbot.Settings.Resolver = v
    end)
    
    -- Silent Aim
    CombatTab:AddToggle("aim_silent", {Title = "Silent Aim", Default = true}, function(v)
        Aimbot.Settings.SilentAim = v
    end)
    
    -- Lock Part
    CombatTab:AddDropdown("aim_part", {Title = "Lock Part", Options = {"Head", "HumanoidRootPart", "UpperTorso"}}, "Head", function(v)
        Aimbot.Settings.LockPart = v
    end)
    
    -- Hit Chance
    CombatTab:AddSlider("aim_hit", {Title = "Hit Chance", Min = 0, Max = 100, Default = 100}, function(v)
        Aimbot.Settings.HitChance = v
    end)
end