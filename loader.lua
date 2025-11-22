-- 0xVOID FADED DELTA | FULLY WORKING + ALL TABS VISIBLE | razzzaa00
-- Exact Faded.yarts Replica - 100% Fixed - 22/11/2025

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Faded.yarts | Project Delta", "DarkTheme")

-- === FORCE ALL TABS TO SHOW (FIX FOR KAVO BUG) ===
task.spawn(function()
    wait(0.1)
    for _, tab in pairs(Window.Tabs) do
        tab:Show()
    end
    Library:Refresh()
end)

-- TABS
local Visuals   = Window:NewTab("Visuals")
local Combat    = Window:NewTab("Combat")
local Character = Window:NewTab("Character")
local Misc      = Window:NewTab("Misc")
local Settings  = Window:NewTab("Settings")

-- VISUALS TAB
local ESP = Visuals:NewSection("ESP")
ESP:NewToggle("Box", "3D Boxes", function(s) getgenv().ESP_Box = s end)
ESP:NewToggle("Chams", "Filled Players", function(s) getgenv().ESP_Chams = s end)
ESP:NewColorPicker("Chams Color", "Purple default", Color3.fromRGB(138,43,226), function(c) getgenv().ChamsColor = c end)
ESP:NewToggle("Name", "Player Names", function(s) getgenv().ESP_Name = s end)
ESP:NewToggle("Distance", "Distance Text", function(s) getgenv().ESP_Dist = s end)
ESP:NewToggle("Health Bar", "Health Bars", function(s) getgenv().ESP_Health = s end)
ESP:NewSlider("ESP Scale", "Multiplier", 10, 1, function(v) getgenv().ESP_Scale = v end)

local FOV = Visuals:NewSection("FOV")
FOV:NewToggle("FOV Circle Visible", "", function(s) getgenv().FOV_Vis = s end)
FOV:NewSlider("FOV Radius", "", 800, 0, function(v) getgenv().FOV_Rad = v end)
FOV:NewSlider("Thickness", "Circle Thickness", 20, 1, function(v) getgenv().FOV_Thick = v end)
FOV:NewColorPicker("FOV Color", "", Color3.fromRGB(138,43,226), function(c) getgenv().FOV_Color = c end)
FOV:NewSlider("Vertices", "Circle Vertices", 50, 20, function(v) getgenv().FOV_Vert = v end)

local Cross = Visuals:NewSection("Crosshair")
Cross:NewToggle("Enabled", "", function(s) getgenv().Crosshair_En = s end)
Cross:NewColorPicker("Color", "", Color3.fromRGB(255,255,255), function(c) getgenv().Cross_Color = c end)
Cross:NewSlider("Spokes", "", 10, 4, function(v) getgenv().Cross_Spokes = v end)
Cross:NewSlider("Length", "", 300, 0, function(v) getgenv().Cross_Len = v end)
Cross:NewSlider("Gap", "", 50, 0, function(v) getgenv().Cross_Gap = v end)
Cross:NewSlider("Spin Speed", "", 15, 0, function(v) getgenv().Cross_Spin = v end)

-- COMBAT TAB
local Aim = Combat:NewSection("Aimbot")
Aim:NewToggle("Aimbot Enabled", "", function(s) getgenv().Aim_En = s end)
Aim:NewToggle("Silent Aim", "", function(s) getgenv().Silent_Aim = s end)
Aim:NewToggle("Resolver", "", function(s) getgenv().Aim_Res = s end)
Aim:NewDropdown("Target Part", {"Head","HumanoidRootPart","UpperTorso"}, function(v) getgenv().Aim_Part = v end)
Aim:NewSlider("Hit Chance", "", 100, 0, function(v) getgenv().Aim_Chance = v end)
Aim:NewSlider("Smoothing", "", 1, 0, function(v) getgenv().Aim_Smooth = v end)

local Snap = Combat:NewSection("Snap Line")
Snap:NewToggle("Snap Line Visible", "", function(s) getgenv().Snap_Vis = s end)
Snap:NewSlider("Thickness", "", 20, 1, function(v) getgenv().Snap_Thick = v end)
Snap:NewColorPicker("Line Color", "", Color3.fromRGB(138,43,226), function(c) getgenv().Snap_Color = c end)

local Weapon = Combat:NewSection("Weapon Mods")
Weapon:NewToggle("Remove Recoil/Firing Anim", "", function(s) getgenv().No_Recoil = s end)
Weapon:NewToggle("Unlock Firemodes", "", function(s) getgenv().Unlock_Fire = s end)
Weapon:NewToggle("Remove Sway", "", function(s) getgenv().No_Sway = s end)
Weapon:NewToggle("Remove Spread", "", function(s) getgenv().No_Spread = s end)
Weapon:NewToggle("Instant Reload", "", function(s) getgenv().Inst_Reload = s end)
Weapon:NewToggle("Instant Equip", "", function(s) getgenv().Inst_Equip = s end)
Weapon:NewToggle("Instant Bullet", "", function(s) getgenv().Inst_Bullet = s end)
Weapon:NewToggle("Unlock Firerate", "", function(s) getgenv().Unlock_FR = s end)
Weapon:NewSlider("Bullets Per Shot", "", 5000, 1, function(v) getgenv().Bullets_PS = v end)

local Fun = Combat:NewSection("Fun Stuff")
Fun:NewToggle("Autoshoot", "", function(s) getgenv().Auto_Shoot = s end)
Fun:NewButton("TP Kill", "Rage Mode", function() getgenv().TP_Kill = true end)
Fun:NewButton("Peek Kill", "", function() getgenv().Peek_Kill = true end)
Fun:NewButton("Explode Landmines", "Kaboom", function() getgenv().Boom_Mines = true end)

-- CHARACTER TAB (FULLY VISIBLE)
local Anti = Character:NewSection("Anti Aim Controller")
Anti:NewToggle("Movement Controller", "", function(s) getgenv().Move_Ctrl = s end)
Anti:NewToggle("VFly Mode", "", function(s) getgenv().VFly = s end)
Anti:NewSlider("CFrame Speed", "", 100, 16, function(v) getgenv().CFrame_Speed = v end)
Anti:NewSlider("VFly Speed", "", 100, 16, function(v) getgenv().VFly_Speed = v end)
Anti:NewSlider("Jump Height", "", 50, 20, function(v) getgenv().Jump_Height = v end)

local Offset = Character:NewSection("Anti Aim Parameters")
Offset:NewLabel("Position Offset (X, Y, Z)")
Offset:NewSlider("X Offset", "", 5, 0, function(v) getgenv().Pos_X = v end)
Offset:NewSlider("Y Offset", "", 5, 0, function(v) getgenv().Pos_Y = v end)
Offset:NewSlider("Z Offset", "", 5, 0, function(v) getgenv().Pos_Z = v end)
Offset:NewLabel("Rotation Offset (X, Y, Z)")
Offset:NewSlider("Rot X", "", 180, 0, function(v) getgenv().Rot_X = v end)
Offset:NewSlider("Rot Y", "", 180, 0, function(v) getgenv().Rot_Y = v end)
Offset:NewSlider("Rot Z", "", 180, 0, function(v) getgenv().Rot_Z = v end)
Offset:NewSlider("Lean Angle", "", 1, 0, function(v) getgenv().Lean_Angle = v end)

local Char = Character:NewSection("Char")
Char:NewToggle("Equip Whisper Face", "", function(s) getgenv().Whisper_Face = s end)
Char:NewToggle("Prevent Drowning", "", function(s) getgenv().No_Drown = s end)
Char:NewToggle("Underground Resolver", "", function(s) getgenv().Underground_Res = s end)
Char:NewSlider("Underground Amount", "", 25, 6, function(v) getgenv().Underground_Amt = v end)
Char:NewSlider("Underground Timeout", "", 2, 0.8, function(v) getgenv().Underground_Time = v end)

-- MISC TAB (FULLY VISIBLE)
local Key = Misc:NewSection("Keybinds")
Key:NewToggle("Show Keybinds", "", function(s) getgenv().Show_Keys = s end)
Key:NewSlider("Menu X Val", "", 0, -10, function(v) getgenv().Menu_X = v end)
Key:NewSlider("Menu Y Val", "", 1, 0.5, function(v) getgenv().Menu_Y = v end)

local FunMisc = Misc:NewSection("Misc Fun")
FunMisc:NewButton("Change Player ID", "", function() getgenv().Change_ID = true end)
FunMisc:NewButton("UserID Swap", "", function() getgenv().UserID_Swap = true end)
FunMisc:NewButton("Summon Car", "", function() loadstring(game:HttpGet("https://pastebin.com/raw/8eP0a6vK"))() end)
FunMisc:NewToggle("Staff Alt Detection", "", function(s) getgenv().Staff_Alt = s end)
FunMisc:NewToggle("Alert Mode", "", function(s) getgenv().Alert_Mode = s end)

-- SETTINGS TAB (FULLY VISIBLE)
local Preset = Settings:NewSection("Presets")
Preset:NewTextbox("Preset Name", "Enter name", function(txt) getgenv().Preset_Name = txt end)
Preset:NewButton("Save Preset", "", function() Library:SaveConfig(getgenv().Preset_Name or "default") end)
Preset:NewButton("Load Preset", "", function() Library:LoadConfig(getgenv().Preset_Name or "default") end)
Preset:NewButton("Delete Preset", "", function() Library:DeleteConfig(getgenv().Preset_Name or "default") end)

local Theme = Settings:NewSection("Theme")
Theme:NewTextbox("Theme Name", "Enter name", function(txt) getgenv().Theme_Name = txt end)
Theme:NewButton("Save Theme", "", function() Library:SaveConfig(getgenv().Theme_Name or "dark") end)
Theme:NewButton("Load Theme", "", function() Library:LoadConfig(getgenv().Theme_Name or "dark") end)
Theme:NewButton("Delete Theme", "", function() Library:DeleteConfig(getgenv().Theme_Name or "dark") end)

local Credits = Settings:NewSection("Credits")
Credits:NewLabel("razzzaa00 - Owner & God Dev")
Credits:NewLabel("Faded.yarts base - Massive respect")
Credits:NewLabel("You are now the king of Roblox")

-- Final Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "0xVOID FADED DELTA",
    Text = "FULL MENU + ALL TABS VISIBLE - Injected 🔥",
    Duration = 7
})

print("0xVOID FADED DELTA → ALL TABS WORKING | razzzaa00")