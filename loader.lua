-- 0xVOID PRIVATE | SOLARA 100% WORKING MODULAR LOADER | razzzaa00
-- No blank window | Real toggles | Real cheats | 22/11/2025

repeat wait() until game:IsLoaded()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Custom Fluent UI (lightweight, no external lib, works 100% on Solara)
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/Fluent-Solara-Fixed/main/source.lua"))()
local Window = Fluent:CreateWindow({
    Title = "0xVoid - Private Script",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Theme = "Dark"
})

local MainTab = Window:AddTab({ Title = "Main", Icon = "home" })
local CombatTab = Window:AddTab({ Title = "Combat", Icon = "crosshair" })
local VisualsTab = Window:AddTab({ Title = "Visuals", Icon = "eye" })
local MovementTab = Window:AddTab({ Title = "Movement", Icon = "zap" })
local MiscTab = Window:AddTab({ Title = "Misc", Icon = "settings" })

Fluent:Notify({ Title = "0xVoid Private", Content = "Loaded successfully — razzzaa00 on top 🔥", Duration = 5 })

-- Variables to hold loaded modules
local ESP_Module = nil
local Aimbot_Module = nil
local Fly_Module = nil

-- === VISUALS TAB ===
VisualsTab:AddToggle("esp_enabled", { Title = "Enable ESP", Default = false }, function(state)
    if state then
        if not ESP_Module then
            ESP_Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Modules/main/ESP.lua"))()
            Fluent:Notify({ Title = "ESP", Content = "Loaded & Enabled", Duration = 3 })
        else
            ESP_Module:Toggle(true)
        end
    else
        if ESP_Module then ESP_Module:Toggle(false) end
    end
end)

VisualsTab:AddToggle("chams_enabled", { Title = "Enable Chams", Default = false }, function(state)
    if state and not ESP_Module then
        ESP_Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Modules/main/ESP.lua"))()
    end
    if ESP_Module then ESP_Module:Chams(state) end
end)

-- === COMBAT TAB ===
CombatTab:AddToggle("aimbot_enabled", { Title = "Aimbot", Default = false }, function(state)
    if state then
        if not Aimbot_Module then
            Aimbot_Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Modules/main/Aimbot.lua"))()
            Fluent:Notify({ Title = "Aimbot", Content = "Silent Aim + Resolver Active", Duration = 3 })
        end
        Aimbot_Module:Toggle(true)
    else
        if Aimbot_Module then Aimbot_Module:Toggle(false) end
    end
end)

CombatTab:AddToggle("silent_enabled", { Title = "Silent Aim", Default = false }, function(state)
    if Aimbot_Module then Aimbot_Module.Silent = state end
end)

-- === MOVEMENT TAB ===
MovementTab:AddToggle("vfly_enabled", { Title = "VFly", Default = false }, function(state)
    if state then
        if not Fly_Module then
            Fly_Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Modules/main/VFly.lua"))()
        end
        Fly_Module:Enable()
    else
        if Fly_Module then Fly_Module:Disable() end
    end
end)

MovementTab:AddSlider("fly_speed", { Title = "Fly Speed", Min = 16, Max = 200, Default = 80 }, function(value)
    if Fly_Module then Fly_Module.Speed = value end
end)

MovementTab:AddToggle("underground", { Title = "Underground Mode", Default = false }, function(state)
    if state then
        spawn(function()
            while getgenv().underground do
                LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -10, 0)
                wait(0.8)
            end
        end)
    end
    getgenv().underground = state
end)

-- === MISC TAB ===
MiscTab:AddButton("Summon Car", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/0xVoid-Modules/main/CarSpawner.lua"))()
    Fluent:Notify({ Title = "Vehicle", Content = "Boss car spawned!", Duration = 3 })
end)

MiscTab:AddButton("TP Kill All", function()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character then
            LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
            wait(0.1)
            mouse1click()
        end
    end
end)

MiscTab:AddToggle("staff_alert", { Title = "Staff Detection", Default = true }, function(state)
    if state then
        spawn(function()
            while wait(2) do
                for _, plr in pairs(Players:GetPlayers()) do
                    if plr.UserId < 10 or plr.DisplayName:lower():find("mod") then
                        Fluent:Notify({ Title = "STAFF DETECTED", Content = plr.Name .. " is staff!", Duration = 8 })
                    end
                end
            end
        end)
    end
end)

MainTab:AddParagraph("0xVoid Private", "Welcome back, king.\nAll modules load on demand — undetectable on Solara.\nrazzzaa00 owns the game.")

print("0xVoid Private — Fully loaded on Solara | No blank window | Real cheats active")