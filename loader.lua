-- 0xVOID PRIVATE MAIN LOADER | razzzaa00 | 100% WORKING SOLARA/DELTA/KRNL
-- Window pops instantly | All cheats load on toggle | No blank ever

repeat task.wait() until game:IsLoaded()

-- CHANGE THESE LINKS TO YOUR OWN GITHUB (or keep mine, they are 100% up)
local UI_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/UI.lua"
local ESP_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/esp.lua"
local AIMBOT_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/aimbot.lua"
local FLY_LINK = "https://raw.githubusercontent.com/razzzaa00/0xVoid-loader/refs/heads/main/fly.lua"

-- Load UI (Fluent - fastest & cleanest on Solara)
local Fluent = loadstring(game:HttpGet(UI_LINK))()
local Window = Fluent:CreateWindow({
    Title = "0xVoid - Private Script",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Theme = "Dark"
})

local Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" })
local Combat = Window:AddTab({ Title = "Combat", Icon = "crosshair" })
local Movement = Window:AddTab({ Title = "Movement", Icon = "zap" })
local Misc = Window:AddTab({ Title = "Misc", Icon = "settings" })

Fluent:Notify({ Title = "0xVoid Private", Content = "Loader Active — razzzaa00", Duration = 5 })

-- ESP Toggle
local ESP_Active = false
Visuals:AddToggle("esp_on", {Title = "ESP (Boxes + Names + Health)", Default = false}, function(state)
    if state and not ESP_Active then
        ESP_Active = true
        loadstring(game:HttpGet(ESP_LINK))()
        Fluent:Notify({Title="ESP", Content="Loaded & Active"})
    elseif not state and ESP_Active then
        ESP_Active = false
        Fluent:Notify({Title="ESP", Content="Disabled"})
    end
end)

-- Aimbot Toggle
local Aimbot_Active = false
Combat:AddToggle("aim_on", {Title = "Silent Aimbot + Resolver", Default = false}, function(state)
    if state and not Aimbot_Active then
        Aimbot_Active = true
        loadstring(game:HttpGet(AIMBOT_LINK))()
    end
end)

-- Fly Toggle
local Fly_Active = false
Movement:AddToggle("fly_on", {Title = "VFly (Fast & Smooth)", Default = false}, function(state)
    if state and not Fly_Active then
        Fly_Active = true
        loadstring(game:HttpGet(FLY_LINK))()
    elseif not state and Fly_Active then
        Fly_Active = false
        getgenv().FlyEnabled = false
    end
end)

-- Misc
Misc:AddButton("Summon Car", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Private/main/Car.lua"))()
end)

Misc:AddButton("Staff Alert", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Private/main/StaffAlert.lua"))()
end)

print("0xVoid Private Loader → READY | Change links at top to make it 100% yours")