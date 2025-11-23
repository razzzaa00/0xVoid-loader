-- 0xVOID PRIVATE | FADED.YARTS 2025 | razzzaa00
-- FULLY FIXED FOR FLUENT | NO BLANK | ALL FEATURES WORKING

repeat task.wait() until game:IsLoaded()

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "0xVoid Private | Faded.yarts Clone",
    SubTitle = "by razzzaa00",
    TabWidth = 160,
    Size = UDim2.fromOffset(620, 480),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightShift
})

local Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" })
local Combat = Window:AddTab({ Title = "Combat", Icon = "crosshair" })
local Character = Window:AddTab({ Title = "Character", Icon = "user" })
local Rage = Window:AddTab({ Title = "Rage", Icon = "zap" })
local Misc = Window:AddTab({ Title = "Misc", Icon = "bomb" })
local Settings = Window:AddTab({ Title = "Settings", Icon = "cog" })

Fluent:Notify({Title = "0xVoid Private", Content = "Faded.yarts Clone Loaded — razzzaa00 Empire Active 🔥", Duration = 7})

-- Pass tabs to modules
getgenv().FluentTabs = {
    Visuals = Visuals,
    Combat = Combat,
    Character = Character,
    Rage = Rage,
    Misc = Misc,
    Settings = Settings
}

-- Load all modules (fixed for Fluent)
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Private/main/esp.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Private/main/aimbot.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Private/main/char.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Private/main/rage.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Private/main/misc.lua"))()

print("0xVoid Private → FULLY LOADED | razzzaa00")