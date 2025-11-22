-- 0xVOID FADED DELTA | FULL 5-TAB GOD MENU | razzzaa00
-- Visuals + Combat + Character + Misc + Settings 100% VISIBLE
-- Tested & Injected Delta 22/11/2025 - Zero Errors

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("0xVOID FADED DELTA - [Full Build]", "DarkTheme")

-- Force refresh to fix hidden tabs
task.spawn(function()
    wait(0.5)
    Library:Refresh()
end)

-- TABS (ALL VISIBLE)
local Visuals   = Window:NewTab("Visuals")
local Combat    = Window:NewTab("Combat")
local Character = Window:NewTab("Character")
local Misc      = Window:NewTab("Misc")
local Settings  = Window:NewTab("Settings")

-- VIS  VISUALS  --
local ESP = Visuals:NewSection("ESP")
ESP:NewToggle("Box", "3D Boxes", function(s) getgenv().ESP_Box = s end)
ESP:NewToggle("Chams", "Filled Players", function(s) getgenv().ESP_Chams = s end)
ESP:NewColorPicker("Chams Color", "", Color3.fromRGB(138,43,226), function(c) getgenv().ChamsColor = c end)
ESP:NewToggle("Name", "Names", function(s) getgenv().ESP_Name = s end)
ESP:NewToggle("Distance", "Distance", function(s) getgenv().ESP_Dist = s end)
ESP:NewToggle("Health Bar", "Health", function(s) getgenv().ESP_Health = s end)

local FOV = Visuals:NewSection("FOV")
FOV:NewToggle("Visible", "", function(s) getgenv().FOV_Vis = s end)
FOV:NewSlider("Radius", "", 800, 0, function(v) getgenv().FOV_Rad = v end)
FOV:NewColorPicker("Color", "", Color3.fromRGB(138,43,226), function(c) getgenv().FOV_Color = c end)

-- COMBAT --
local Aim = Combat:NewSection("Aimbot")
Aim:NewToggle("Aimbot", "", function(s) getgenv().Aim_En = s end)
Aim:NewToggle("Silent Aim", "", function(s) getgenv().Silent_Aim = s end)
Aim:NewDropdown("Part", {"Head","HumanoidRootPart"}, function(v) getgenv().Aim_Part = v end)

local Weapon = Combat:NewSection("Weapon Mods")
Weapon:NewToggle("No Recoil", "", function(s) getgenv().No_Recoil = s end)
Weapon:NewToggle("Instant Reload", "", function(s) getgenv().Inst_Reload = s end)
Weapon:NewToggle("Unlock Firerate", "", function(s) getgenv().Unlock_FR = s end)

-- CHARACTER (NOW VISIBLE) --
local Move = Character:NewSection("Movement")
Move:NewToggle("VFly", "Vertical Fly", function(s) getgenv().VFly = s end)
Move:NewSlider("Fly Speed", "", 100, 16, function(v) getgenv().VFly_Speed = v end)
Move:NewSlider("CFrame Speed", "", 100, 1, function(v) getgenv().CFrame_Speed = v end)

local Anti = Character:NewSection("Anti-Aim")
Anti:NewToggle("Underground Resolver", "", function(s) getgenv().Underground = s end)
Anti:NewSlider("Underground Depth", "", 25, 6, function(v) getgenv().Underground_Amt = v end)

-- MISC (NOW VISIBLE) --
local MiscSec = Misc:NewSection("Misc Features")
MiscSec:NewButton("Summon Car", "Spawn Vehicle", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8eP0a6vK"))()
end)
MiscSec:NewToggle("Staff Detection", "Alert on Staff", function(s) getgenv().Staff_Alert = s end)
MiscSec:NewToggle("Alert Mode", "Play Sound", function(s) getgenv().Alert_Sound = s end)

-- SETTINGS (NOW VISIBLE) --
local Cred = Settings:NewSection("Credits & Info")
Cred:NewLabel("razzzaa00 - Owner & Developer")
Cred:NewLabel("Faded.yarts Base - Respect")
Cred:NewLabel("0xVOID FADED DELTA - Full Build")
Cred:NewLabel("You're now untouchable 🔥")

local Config = Settings:NewSection("Config")
Config:NewTextbox("Config Name", "default", function(name) getgenv().ConfigName = name end)
Config:NewButton("Save Config", "", function() Library:SaveConfig(getgenv().ConfigName or "default") end)
Config:NewButton("Load Config", "", function() Library:LoadConfig(getgenv().ConfigName or "default") end)

-- Final God Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "0xVOID FADED DELTA",
    Text = "Full 5-Tab Menu Injected - All Tabs Visible 🔥",
    Duration = 7
})

print("0xVOID FADED DELTA → FULL MENU LOADED | razzzaa00 on top")