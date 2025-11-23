-- 0xVOID EMPIRE | PRIVATE LOADER | razzzaa00 | 2025
-- FULL FADED.YARTS CLONE | MODULAR | NO DEAD LINKS | 100% WORKING

repeat task.wait() until game:IsLoaded()

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "0xVoid Empire",
    SubTitle = "by razzzaa00",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightShift
})

-- Tabs
local Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" })
local Combat = Window:AddTab({ Title = "Combat", Icon = "crosshair" })
local Character = Window:AddTab({ Title = "Character", Icon = "user" })
local Rage = Window:AddTab({ Title = "Rage", Icon = "zap" })
local Misc = Window:AddTab({ Title = "Misc", Icon = "bomb" })
local Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })

Fluent:Notify({ Title = "0xVoid Empire", Content = "Loaded — You're Unstoppable 🔥", Duration = 8 })

-- Load Modules
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Empire/main/esp.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Empire/main/aimbot.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Empire/main/vfly.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Empire/main/rage.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Empire/main/misc.lua"))()

-- UI Controls will be added inside each module
getgenv().Window = Window
getgenv().Visuals = Visuals
getgenv().Combat = Combat
getgenv().Character = Character
getgenv().Rage = Rage
getgenv().Misc = Misc
getgenv().Settings = Settings

print("0xVoid Empire → LOADED | razzzaa00")