-- 0xVOID PRIVATE | FADED.YARTS LOADER | razzzaa00 | 2025
-- Your Faded.yarts Clone | Modular | All Features | No Blanks

repeat task.wait() until game:IsLoaded()

-- Your Repo Links (change username if needed)
local UI_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/UI.lua"
local ESP_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/esp.lua"
local AIMBOT_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/aimbot.lua"
local CHAR_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/char.lua"
local MISC_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/misc.lua"

-- Load UI (your UI.lua)
local Fluent = loadstring(game:HttpGet(UI_LINK))()
local Window = Fluent:CreateWindow({
    Title = "Faded.yarts | 0xVoid Private [Build: razzzaa00]",
    TabWidth = 160,
    Size = UDim2.fromOffset(600, 460),
    Theme = "Dark"
})

local VisualsTab = Window:AddTab({ Title = "Visuals", Icon = "eye" })
local CombatTab = Window:AddTab({ Title = "Combat", Icon = "crosshair" })
local CharacterTab = Window:AddTab({ Title = "Character", Icon = "user" })
local MiscTab = Window:AddTab({ Title = "Misc", Icon = "zap" })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" })

Fluent:Notify({ Title = "0xVoid Private", Content = "Faded.yarts Clone Loaded — razzzaa00 🔥", Duration = 5 })

-- Load Modules on Demand
getgenv().Modules = {}
getgenv().Window = Window
getgenv().VisualsTab = VisualsTab
getgenv().CombatTab = CombatTab
getgenv().CharacterTab = CharacterTab
getgenv().MiscTab = MiscTab
getgenv().SettingsTab = SettingsTab

-- ESP Toggle (loads esp.lua on toggle)
local ESPLoaded = false
VisualsTab:AddToggle("esp_main", {Title = "Enable ESP", Default = false}, function(state)
    if state and not ESPLoaded then
        ESPLoaded = true
        loadstring(game:HttpGet(ESP_LINK))()
        Fluent:Notify({Title = "ESP", Content = "Loaded & Active", Duration = 3})
    end
    getgenv().ESP_Enabled = state
end)

-- Aimbot Toggle (loads aimbot.lua on toggle)
local AimbotLoaded = false
CombatTab:AddToggle("aim_main", {Title = "Enable Aimbot", Default = false}, function(state)
    if state and not AimbotLoaded then
        AimbotLoaded = true
        loadstring(game:HttpGet(AIMBOT_LINK))()
        Fluent:Notify({Title = "Aimbot", Content = "Silent Aim + Resolver Active", Duration = 3})
    end
    getgenv().Aimbot_Enabled = state
end)

-- Character Toggle (loads char.lua on toggle)
local CharLoaded = false
CharacterTab:AddToggle("char_main", {Title = "Enable Character Mods", Default = false}, function(state)
    if state and not CharLoaded then
        CharLoaded = true
        loadstring(game:HttpGet(CHAR_LINK))()
        Fluent:Notify({Title = "Character", Content = "VFly + Speed + Jump Loaded", Duration = 3})
    end
    getgenv().Char_Enabled = state
end)

-- Misc Toggle (loads misc.lua on toggle)
local MiscLoaded = false
MiscTab:AddToggle("misc_main", {Title = "Enable Misc", Default = false}, function(state)
    if state and not MiscLoaded then
        MiscLoaded = true
        loadstring(game:HttpGet(MISC_LINK))()
        Fluent:Notify({Title = "Misc", Content = "Car Spawn + TP Kill Active", Duration = 3})
    end
    getgenv().Misc_Enabled = state
end)

print("0xVoid Private Loader → READY | razzzaa00 Empire Active")