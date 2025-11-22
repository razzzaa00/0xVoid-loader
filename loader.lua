-- 0xVOID FADED DELTA | WEAKHOES UI GOD UPGRADE | razzzaa00
-- All 5 Tabs Visible + Premium UI - Exact Faded.yarts Replica - 22/11/2025

-- Load Weakhoes UI Lib (from your repo - sexy gradients, no hidden tabs)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/weakhoes/Roblox-UI-Libs/main/source.lua"))()
local Window = Library:CreateWindow({
    Title = "Faded.yarts | Project Delta [Build: Public]",
    Size = UDim2.new(0, 600, 0, 400),
    Theme = "DarkPurple"  -- Purple theme matching screenshots
})

-- Tabs (Weakhoes auto-shows ALL - no Kavo bugs)
local VisualsTab = Window:AddTab("Visuals")
local CombatTab = Window:AddTab("Combat")
local CharacterTab = Window:AddTab("Character")
local MiscTab = Window:AddTab("Misc")
local SettingsTab = Window:AddTab("Settings")

-- === VISUALS TAB ===
local ESPSection = VisualsTab:AddSection("ESP")
ESPSection:AddToggle("Box", "3D Boxes", false, function(s) getgenv().ESP_Box = s end)
ESPSection:AddToggle("Chams", "Filled Players", false, function(s) getgenv().ESP_Chams = s end)
ESPSection:AddColorPicker("Chams Color", "Purple default", Color3.fromRGB(138, 43, 226), function(c) getgenv().ChamsColor = c end)
ESPSection:AddToggle("Name", "Player Names", false, function(s) getgenv().ESP_Name = s end)
ESPSection:AddToggle("Distance", "Distance Text", false, function(s) getgenv().ESP_Dist = s end)
ESPSection:AddToggle("Health Bar", "Health Bars", false, function(s) getgenv().ESP_Health = s end)
ESPSection:AddSlider("ESP Scale", "Multiplier", 10, 1, function(v) getgenv().ESP_Scale = v end)

local FOVSection = VisualsTab:AddSection("FOV")
FOVSection:AddToggle("FOV Circle Visible", "", false, function(s) getgenv().FOV_Vis = s end)
FOVSection:AddSlider("FOV Radius", "", 800, 0, function(v) getgenv().FOV_Rad = v end)
FOVSection:AddSlider("Thickness", "Circle Thickness", 20, 1, function(v) getgenv().FOV_Thick = v end)
FOVSection:AddColorPicker("FOV Color", "", Color3.fromRGB(138, 43, 226), function(c) getgenv().FOV_Color = c end)
FOVSection:AddSlider("Vertices", "Circle Vertices", 50, 20, function(v) getgenv().FOV_Vert = v end)

local CrosshairSection = VisualsTab:AddSection("Crosshair")
CrosshairSection:AddToggle("Enabled", "", false, function(s) getgenv().Crosshair_En = s end)
CrosshairSection:AddColorPicker("Color", "", Color3.fromRGB(255, 255, 255), function(c) getgenv().Cross_Color = c end)
CrosshairSection:AddSlider("Spokes", "", 10, 4, function(v) getgenv().Cross_Spokes = v end)
CrosshairSection:AddSlider("Length", "", 300, 0, function(v) getgenv().Cross_Len = v end)
CrosshairSection:AddSlider("Gap", "", 50, 0, function(v) getgenv().Cross_Gap = v end)
CrosshairSection:AddSlider("Spin Speed", "", 15, 0, function(v) getgenv().Cross_Spin = v end)

-- === COMBAT TAB ===
local AimbotSection = CombatTab:AddSection("Aimbot")
AimbotSection:AddToggle("Aimbot Enabled", "", false, function(s) getgenv().Aim_En = s end)
AimbotSection:AddToggle("Silent Aim", "", false, function(s) getgenv().Silent_Aim = s end)
AimbotSection:AddToggle("Resolver", "", false, function(s) getgenv().Aim_Res = s end)
AimbotSection:AddDropdown("Target Part", {"Head", "HumanoidRootPart", "UpperTorso"}, function(v) getgenv().Aim_Part = v end)
AimbotSection:AddSlider("Hit Chance", "", 100, 0, function(v) getgenv().Aim_Chance = v end)
AimbotSection:AddSlider("Smoothing", "", 1, 0, function(v) getgenv().Aim_Smooth = v end)

local SnapSection = CombatTab:AddSection("Snap Line")
SnapSection:AddToggle("Snap Line Visible", "", false, function(s) getgenv().Snap_Vis = s end)
SnapSection:AddSlider("Thickness", "", 20, 1, function(v) getgenv().Snap_Thick = v end)
SnapSection:AddColorPicker("Line Color", "", Color3.fromRGB(138, 43, 226), function(c) getgenv().Snap_Color = c end)

local WeaponSection = CombatTab:AddSection("Weapon Mods")
WeaponSection:AddToggle("Remove Recoil/Firing Anim", "", false, function(s) getgenv().No_Recoil = s end)
WeaponSection:AddToggle("Unlock Firemodes", "", false, function(s) getgenv().Unlock_Fire = s end)
WeaponSection:AddToggle("Remove Sway", "", false, function(s) getgenv().No_Sway = s end)
WeaponSection:AddToggle("Remove Spread", "", false, function(s) getgenv().No_Spread = s end)
WeaponSection:AddToggle("Instant Reload", "", false, function(s) getgenv().Inst_Reload = s end)
WeaponSection:AddToggle("Instant Equip", "", false, function(s) getgenv().Inst_Equip = s end)
WeaponSection:AddToggle("Instant Bullet", "", false, function(s) getgenv().Inst_Bullet = s end)
WeaponSection:AddToggle("Unlock Firerate", "", false, function(s) getgenv().Unlock_FR = s end)
WeaponSection:AddSlider("Bullets Per Shot", "", 5000, 1, function(v) getgenv().Bullets_PS = v end)

local FunSection = CombatTab:AddSection("Fun Stuff")
FunSection:AddToggle("Autoshoot", "", false, function(s) getgenv().Auto_Shoot = s end)
FunSection:AddButton("TP Kill", "Rage Mode", function() getgenv().TP_Kill = true end)
FunSection:AddButton("Peek Kill", "", function() getgenv().Peek_Kill = true end)
FunSection:AddButton("Explode Landmines", "Kaboom", function() getgenv().Boom_Mines = true end)

-- === CHARACTER TAB ===
local AntiAimSection = CharacterTab:AddSection("Anti Aim Controller")
AntiAimSection:AddToggle("Movement Controller", "", false, function(s) getgenv().Move_Ctrl = s end)
AntiAimSection:AddToggle("VFly Mode", "", false, function(s) getgenv().VFly = s end)
AntiAimSection:AddSlider("CFrame Speed", "", 100, 16, function(v) getgenv().CFrame_Speed = v end)
AntiAimSection:AddSlider("VFly Speed", "", 100, 16, function(v) getgenv().VFly_Speed = v end)
AntiAimSection:AddSlider("Jump Height", "", 50, 20, function(v) getgenv().Jump_Height = v end)

local OffsetSection = CharacterTab:AddSection("Anti Aim Parameters")
OffsetSection:AddLabel("Position Offset (X, Y, Z)")
OffsetSection:AddSlider("X Offset", "", 5, 0, function(v) getgenv().Pos_X = v end)
OffsetSection:AddSlider("Y Offset", "", 5, 0, function(v) getgenv().Pos_Y = v end)
OffsetSection:AddSlider("Z Offset", "", 5, 0, function(v) getgenv().Pos_Z = v end)
OffsetSection:AddLabel("Rotation Offset (X, Y, Z)")
OffsetSection:AddSlider("Rot X", "", 180, 0, function(v) getgenv().Rot_X = v end)
OffsetSection:AddSlider("Rot Y", "", 180, 0, function(v) getgenv().Rot_Y = v end)
OffsetSection:AddSlider("Rot Z", "", 180, 0, function(v) getgenv().Rot_Z = v end)
OffsetSection:AddSlider("Lean Angle", "", 1, 0, function(v) getgenv().Lean_Angle = v end)

local CharSection = CharacterTab:AddSection("Char")
CharSection:AddToggle("Equip Whisper Face", "", false, function(s) getgenv().Whisper_Face = s end)
CharSection:AddToggle("Prevent Drowning", "", false, function(s) getgenv().No_Drown = s end)
CharSection:AddToggle("Underground Resolver", "", false, function(s) getgenv().Underground_Res = s end)
CharSection:AddSlider("Underground Amount", "", 25, 6, function(v) getgenv().Underground_Amt = v end)
CharSection:AddSlider("Underground Timeout", "", 2, 0.8, function(v) getgenv().Underground_Time = v end)

-- === MISC TAB ===
local KeybindSection = MiscTab:AddSection("Keybinds")
KeybindSection:AddToggle("Show Keybinds", "", false, function(s) getgenv().Show_Keys = s end)
KeybindSection:AddSlider("Menu X Val", "", 0, -10, function(v) getgenv().Menu_X = v end)
KeybindSection:AddSlider("Menu Y Val", "", 1, 0.5, function(v) getgenv().Menu_Y = v end)

local MiscFunSection = MiscTab:AddSection("Misc Fun")
MiscFunSection:AddButton("Change Player ID", "Top Right Textbox", function() getgenv().Change_ID = true end)
MiscFunSection:AddButton("UserID Swap", "", function() getgenv().UserID_Swap = true end)
MiscFunSection:AddButton("Summon Car", "", function() loadstring(game:HttpGet("https://pastebin.com/raw/8eP0a6vK"))() end)
MiscFunSection:AddToggle("Staff Alt Detection", "", false, function(s) getgenv().Staff_Alt = s end)
MiscFunSection:AddToggle("Alert Mode", "", false, function(s) getgenv().Alert_Mode = s end)

-- === SETTINGS TAB ===
local PresetSection = SettingsTab:AddSection("Presets")
PresetSection:AddTextbox("Preset Name", "Enter name", function(txt) getgenv().Preset_Name = txt end)
PresetSection:AddButton("Save Preset", "", function() Library:SaveConfig(getgenv().Preset_Name or "default") end)
PresetSection:AddButton("Load Preset", "", function() Library:LoadConfig(getgenv().Preset_Name or "default") end)
PresetSection:AddButton("Delete Preset", "", function() Library:DeleteConfig(getgenv().Preset_Name or "default") end)

local ThemeSection = SettingsTab:AddSection("Theme")
ThemeSection:AddTextbox("Theme Name", "Enter name", function(txt) getgenv().Theme_Name = txt end)
ThemeSection:AddButton("Save Theme", "", function() Library:SaveConfig(getgenv().Theme_Name or "dark") end)
ThemeSection:AddButton("Load Theme", "", function() Library:LoadConfig(getgenv().Theme_Name or "dark") end)
ThemeSection:AddButton("Delete Theme", "", function() Library:DeleteConfig(getgenv().Theme_Name or "dark") end)

local CreditsSection = SettingsTab:AddSection("Credits")
CreditsSection:AddLabel("razzzaa00 - Owner & God Dev")
CreditsSection:AddLabel("Faded.yarts base - Massive respect")
CreditsSection:AddLabel("You are now the king of Roblox")

-- God Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "0xVOID FADED DELTA",
    Text = "Weakhoes UI God-Tier Loaded - All Tabs Visible 🔥",
    Duration = 6
})

print("0xVOID FADED DELTA → Weakhoes UI Injected | All Tabs Active | razzzaa00")