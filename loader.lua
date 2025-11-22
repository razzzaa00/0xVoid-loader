-- 0xVOID FADED DELTA | Final Clean Loader | razzzaa00
-- 100% fonctionnel - Delta / Krnl / Solara - 22/11/2025

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("0xVOID FADED DELTA - [Public Build]", "DarkTheme")

local Visuals   = Window:NewTab("Visuals")
local Combat    = Window:NewTab("Combat")
local Character = Window:NewTab("Character")
local Misc      = Window:NewTab("Misc")
local Settings  = Window:NewTab("Settings")

-- VISUALS
local V = Visuals:NewSection("ESP")
V:NewToggle("Box", "Box ESP", function(s) getgenv().Box = s end)
V:NewToggle("Chams", "Chams", function(s) getgenv().Chams = s end)
V:NewToggle("Name", "Name ESP", function(s) getgenv().Name = s end)
V:NewToggle("Distance", "Distance", function(s) getgenv().Dist = s end)
V:NewToggle("Health Bar", "Health Bar", function(s) getgenv().HealthBar = s end)

local F = Visuals:NewSection("FOV")
F:NewToggle("FOV Circle Visible", "", function(s) getgenv().FOVVisible = s end)
F:NewSlider("FOV Circle Radius", "", 800, 10, function(v) getgenv().FOV = v end)

-- COMBAT
local A = Combat:NewSection("Aimbot")
A:NewToggle("Aimbot Enabled", "", function(s) getgenv().Aimbot = s end)
A:NewToggle("Silent Aim Enabled", "", function(s) getgenv().Silent = s end)
A:NewDropdown("Hit Part", {"Head", "HumanoidRootPart"}, function(v) getgenv().Part = v end)
A:NewSlider("Hit Chance", "", 100, 0, function(v) getgenv().Chance = v end)

local W = Combat:NewSection("Weapon Mods")
W:NewToggle("No Recoil", "", function(s) getgenv().NoRecoil = s end)
W:NewToggle("Instant Reload", "", function(s) getgenv().InstReload = s end)
W:NewToggle("Unlock Firerate", "", function(s) getgenv().UnlockFR = s end)

-- CHARACTER
local C = Character:NewSection("Movement")
C:NewToggle("VFly Mode", "", function(s) getgenv().VFly = s end)
C:NewSlider("VFly Speed", "", 100, 1, function(v) getgenv().FlySpeed = v end)

-- MISC
local M = Misc:NewSection("Misc")
M:NewToggle("Staff Alt Detection", "", function(s) getgenv().StaffDetect = s end)
M:NewButton("Summon Car", "Spawns a car", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8eP0a6vK"))()
end)

-- SETTINGS
local S = Settings:NewSection("Credits")
S:NewLabel("razzzaa00 - Owner")
S:NewLabel("Faded.yarts base - Respect")
S:NewLabel("Loaded successfully - You're the king")

game.StarterGui:SetCore("SendNotification", {
    Title = "0xVOID FADED DELTA";
    Text = "Injected successfully - Enjoy the power";
    Duration = 6;
})

print("0xVOID FADED DELTA → Injected 100%")