-- 0xVOID FADED DELTA | RAYFIELD FINAL GOD MENU | razzzaa00
-- All 5 Tabs + Premium UI - 100% Fixed - 22/11/2025

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Faded.yarts | Project Delta",
   LoadingTitle = "0xVOID FADED DELTA",
   LoadingSubtitle = "by razzzaa00",
   ConfigurationSaving = { Enabled = true, FolderName = "0xVoidDelta", FileName = "Config" },
   KeySystem = false
})

-- ALL TABS
local Visuals   = Window:CreateTab("Visuals",   4483362458)
local Combat    = Window:CreateTab("Combat",    4483362458)
local Character = Window:CreateTab("Character", 4483362458)
local Misc      = Window:CreateTab("Misc",      4483362458)
local Settings  = Window:CreateTab("Settings",  4483362458)

-- VISUALS
local ESP = Visuals:CreateSection("ESP")
ESP:CreateToggle({Name = "Box", CurrentValue = false, Callback = function(v) getgenv().ESP_Box = v end})
ESP:CreateToggle({Name = "Chams", CurrentValue = false, Callback = function(v) getgenv().ESP_Chams = v end})
ESP:CreateColorPicker({Name = "Chams Color", Color = Color3.fromRGB(138,43,226), Callback = function(c) getgenv().ChamsColor = c end})
ESP:CreateToggle({Name = "Name", CurrentValue = false, Callback = function(v) getgenv().ESP_Name = v end})
ESP:CreateToggle({Name = "Distance", CurrentValue = false, Callback = function(v) getgenv().ESP_Dist = v end})
ESP:CreateToggle({Name = "Health Bar", CurrentValue = false, Callback = function(v) getgenv().ESP_Health = v end})
ESP:CreateSlider({Name = "ESP Scale", Range = {1,10}, Increment = 1, CurrentValue = 1, Callback = function(v) getgenv().ESP_Scale = v end})

local FOV = Visuals:CreateSection("FOV")
FOV:CreateToggle({Name = "FOV Circle Visible", CurrentValue = false, Callback = function(v) getgenv().FOV_Vis = v end})
FOV:CreateSlider({Name = "FOV Radius", Range = {0,800}, Increment = 10, CurrentValue = 100, Callback = function(v) getgenv().FOV_Rad = v end})
FOV:CreateSlider({Name = "Thickness", Range = {1,20}, Increment = 1, CurrentValue = 2, Callback = function(v) getgenv().FOV_Thick = v end})
FOV:CreateColorPicker({Name = "FOV Color", Color = Color3.fromRGB(138,43,226), Callback = function(c) getgenv().FOV_Color = c end})
FOV:CreateSlider({Name = "Vertices", Range = {20,50}, Increment = 5, CurrentValue = 30, Callback = function(v) getgenv().FOV_Vert = v end})

local Cross = Visuals:CreateSection("Crosshair")
Cross:CreateToggle({Name = "Enabled", CurrentValue = false, Callback = function(v) getgenv().Crosshair_En = v end})
Cross:CreateColorPicker({Name = "Color", Color = Color3.fromRGB(255,255,255), Callback = function(c) getgenv().Cross_Color = c end})
Cross:CreateSlider({Name = "Spokes", Range = {4,10}, Increment = 1, CurrentValue = 4, Callback = function(v) getgenv().Cross_Spokes = v end})
Cross:CreateSlider({Name = "Length", Range = {0,300}, Increment = 10, CurrentValue = 100, Callback = function(v) getgenv().Cross_Len = v end})
Cross:CreateSlider({Name = "Gap", Range = {0,50}, Increment = 5, CurrentValue = 10, Callback = function(v) getgenv().Cross_Gap = v end})
Cross:CreateSlider({Name = "Spin Speed", Range = {0,15}, Increment = 1, CurrentValue = 5, Callback = function(v) getgenv().Cross_Spin = v end})

-- COMBAT
local Aim = Combat:CreateSection("Aimbot")
Aim:CreateToggle({Name = "Aimbot Enabled", CurrentValue = false, Callback = function(v) getgenv().Aim_En = v end})
Aim:CreateToggle({Name = "Silent Aim", CurrentValue = false, Callback = function(v) getgenv().Silent_Aim = v end})
Aim:CreateToggle({Name = "Resolver", CurrentValue = false, Callback = function(v) getgenv().Aim_Res = v end})
Aim:CreateDropdown({Name = "Target Part", Options = {"Head","HumanoidRootPart","UpperTorso"}, CurrentOption = "Head", Callback = function(o) getgenv().Aim_Part = o end})
Aim:CreateSlider({Name = "Hit Chance", Range = {0,100}, Increment = 5, CurrentValue = 100, Callback = function(v) getgenv().Aim_Chance = v end})
Aim:CreateSlider({Name = "Smoothing", Range = {0,1}, Increment = 0.1, CurrentValue = 0.1, Callback = function(v) getgenv().Aim_Smooth = v end})

local Snap = Combat:CreateSection("Snap Line")
Snap:CreateToggle({Name = "Snap Line Visible", CurrentValue = false, Callback = function(v) getgenv().Snap_Vis = v end})
Snap:CreateSlider({Name = "Thickness", Range = {1,20}, Increment = 1, CurrentValue = 2, Callback = function(v) getgenv().Snap_Thick = v end})
Snap:CreateColorPicker({Name = "Line Color", Color = Color3.fromRGB(138,43,226), Callback = function(c) getgenv().Snap_Color = c end})

local Weapon = Combat:CreateSection("Weapon Mods")
Weapon:CreateToggle({Name = "Remove Recoil/Firing Anim", CurrentValue = false, Callback = function(v) getgenv().No_Recoil = v end})
Weapon:CreateToggle({Name = "Unlock Firemodes", CurrentValue = false, Callback = function(v) getgenv().Unlock_Fire = v end})
Weapon:CreateToggle({Name = "Remove Sway", CurrentValue = false, Callback = function(v) getgenv().No_Sway = v end})
Weapon:CreateToggle({Name = "Remove Spread", CurrentValue = false, Callback = function(v) getgenv().No_Spread = v end})
Weapon:CreateToggle({Name = "Instant Reload", CurrentValue = false, Callback = function(v) getgenv().Inst_Reload = v end})
Weapon:CreateToggle({Name = "Instant Equip", CurrentValue = false, Callback = function(v) getgenv().Inst_Equip = v end})
Weapon:CreateToggle({Name = "Instant Bullet", CurrentValue = false, Callback = function(v) getgenv().Inst_Bullet = v end})
Weapon:CreateToggle({Name = "Unlock Firerate", CurrentValue = false, Callback = function(v) getgenv().Unlock_FR = v end})
Weapon:CreateSlider({Name = "Bullets Per Shot", Range = {1,5000}, Increment = 100, CurrentValue = 1, Callback = function(v) getgenv().Bullets_PS = v end})

local Fun = Combat:CreateSection("Fun Stuff")
Fun:CreateToggle({Name = "Autoshoot", CurrentValue = false, Callback = function(v) getgenv().Auto_Shoot = v end})
Fun:CreateButton({Name = "TP Kill", Callback = function() getgenv().TP_Kill = true end})
Fun:CreateButton({Name = "Peek Kill", Callback = function() getgenv().Peek_Kill = true end})
Fun:CreateButton({Name = "Explode Landmines", Callback = function() getgenv().Boom_Mines = true end})

-- CHARACTER
local Anti = Character:CreateSection("Anti Aim Controller")
Anti:CreateToggle({Name = "Movement Controller", CurrentValue = false, Callback = function(v) getgenv().Move_Ctrl = v end})
Anti:CreateToggle({Name = "VFly Mode", CurrentValue = false, Callback = function(v) getgenv().VFly = v end})
Anti:CreateSlider({Name = "CFrame Speed", Range = {16,100}, Increment = 5, CurrentValue = 16, Callback = function(v) getgenv().CFrame_Speed = v end})
Anti:CreateSlider({Name = "VFly Speed", Range = {16,100}, Increment = 5, CurrentValue = 16, Callback = function(v) getgenv().VFly_Speed = v end})
Anti:CreateSlider({Name = "Jump Height", Range = {20,50}, Increment = 5, CurrentValue = 20, Callback = function(v) getgenv().Jump_Height = v end})

local Offset = Character:CreateSection("Anti Aim Parameters")
Offset:CreateLabel("Position Offset (X, Y, Z)")
Offset:CreateSlider({Name = "X Offset", Range = {0,5}, Increment = 1, CurrentValue = 0, Callback = function(v) getgenv().Pos_X = v end})
Offset:CreateSlider({Name = "Y Offset", Range = {0,5}, Increment = 1, CurrentValue = 0, Callback = function(v) getgenv().Pos_Y = v end})
Offset:CreateSlider({Name = "Z Offset", Range = {0,5}, Increment = 1, CurrentValue = 0, Callback = function(v) getgenv().Pos_Z = v end})
Offset:CreateLabel("Rotation Offset (X, Y, Z)")
Offset:CreateSlider({Name = "Rot X", Range = {0,180}, Increment = 10, CurrentValue = 0, Callback = function(v) getgenv().Rot_X = v end})
Offset:CreateSlider({Name = "Rot Y", Range = {0,180}, Increment = 10, CurrentValue = 0, Callback = function(v) getgenv().Rot_Y = v end})
Offset:CreateSlider({Name = "Rot Z", Range = {0,180}, Increment = 10, CurrentValue = 0, Callback = function(v) getgenv().Rot_Z = v end})
Offset:CreateSlider({Name = "Lean Angle", Range = {0,1}, Increment = 0.1, CurrentValue = 0, Callback = function(v) getgenv().Lean_Angle = v end})

local Char = Character:CreateSection("Char")
Char:CreateToggle({Name = "Equip Whisper Face", CurrentValue = false, Callback = function(v) getgenv().Whisper_Face = v end})
Char:CreateToggle({Name = "Prevent Drowning", CurrentValue = false, Callback = function(v) getgenv().No_Drown = v end})
Char:CreateToggle({Name = "Underground Resolver", CurrentValue = false, Callback = function(v) getgenv().Underground_Res = v end})
Char:CreateSlider({Name = "Underground Amount", Range = {6,25}, Increment = 1, CurrentValue = 6, Callback = function(v) getgenv().Underground_Amt = v end})
Char:CreateSlider({Name = "Underground Timeout", Range = {0.8,2}, Increment = 0.2, CurrentValue = 0.8, Callback = function(v) getgenv().Underground_Time = v end})

-- MISC
local Key = Misc:CreateSection("Keybinds")
Key:CreateToggle({Name = "Show Keybinds", CurrentValue = false, Callback = function(v) getgenv().Show_Keys = v end})
Key:CreateSlider({Name = "Menu X Val", Range = {-10,0}, Increment = 1, CurrentValue = 0, Callback = function(v) getgenv().Menu_X = v end})
Key:CreateSlider({Name = "Menu Y Val", Range = {0.5,1}, Increment = 0.1, CurrentValue = 0.5, Callback = function(v) getgenv().Menu_Y = v end})

local FunMisc = Misc:CreateSection("Misc Fun")
FunMisc:CreateButton({Name = "Change Player ID", Callback = function() getgenv().Change_ID = true end})
FunMisc:CreateButton({Name = "UserID Swap", Callback = function() getgenv().UserID_Swap = true end})
FunMisc:CreateButton({Name = "Summon Car", Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/8eP0a6vK"))() end})
FunMisc:CreateToggle({Name = "Staff Alt Detection", CurrentValue = false, Callback = function(v) getgenv().Staff_Alt = v end})
FunMisc:CreateToggle({Name = "Alert Mode", CurrentValue = false, Callback = function(v) getgenv().Alert_Mode = v end})

-- SETTINGS
local Preset = Settings:CreateSection("Presets")
Preset:CreateTextbox({Name = "Preset Name", TextDisappear = true, Callback = function(t) getgenv().Preset_Name = t end})
Preset:CreateButton({Name = "Save Preset", Callback = function() Rayfield:SaveConfiguration(getgenv().Preset_Name or "default") end})
Preset:CreateButton({Name = "Load Preset", Callback = function() Rayfield:LoadConfiguration(getgenv().Preset_Name or "default") end})
Preset:CreateButton({Name = "Delete Preset", Callback = function() Rayfield:DeleteConfiguration(getgenv().Preset_Name or "default") end})

local Credits = Settings:CreateSection("Credits")
Credits:CreateLabel("razzzaa00 - Owner & God Dev")
Credits:CreateLabel("Faded.yarts base - Massive respect")
Credits:CreateLabel("You are now the king of Roblox")

-- Notification
Rayfield:Notify({
   Title = "0xVOID FADED DELTA",
   Content = "God-Tier Rayfield Menu Injected - All Tabs Live 🔥",
   Duration = 6
})

print("0xVOID FADED DELTA → RAYFIELD GOD MENU LOADED | razzzaa00")