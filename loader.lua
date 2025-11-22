-- 0xVOID FADED DELTA | Private Build | Boss Edition
-- 1:1 Replica of Faded.yarts / Project Delta
-- Made for the King: razzzaa00

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Faded.yarts | Project Delta [Build: Public]", "DarkTheme")

-- Tabs
local VisualsTab   = Window:NewTab("Visuals")
local CombatTab    = Window:NewTab("Combat")
local CharacterTab = Window:NewTab("Character")
local MiscTab      = Window:NewTab("Misc")
local SettingsTab  = Window:NewTab("Settings")

-- === VISUALS TAB ===
local ESPSection = VisualsTab:NewSection("ESP")
ESPSection:NewToggle("Box", "", function(v) getgenv().ESP_Box = v end)
ESPSection:NewToggle("Chams", "", function(v) getgenv().ESP_Chams = v end)
ESPSection:NewColorPicker("Chams Outline Color", "", Color3.fromRGB(255,0,255), function(c) getgenv().ChamsColor = c end)
ESPSection:NewToggle("Name", "", function(v) getgenv().ESP_Name = v end)
ESPSection:NewToggle("Distance", "", function(v) getgenv().ESP_Distance = v end)
ESPSection:NewToggle("Health Readout", "", function(v) getgenv().ESP_Health = v end)
ESPSection:NewToggle("Health Bar", "", function(v) getgenv().ESP_HealthBar = v end)
ESPSection:NewSlider("ESP Scale Multiplier", "", 10, 1, function(v) getgenv().ESP_Scale = v end)
ESPSection:NewToggle("Grave Icon for Corpses", "", function(v) getgenv().ESP_Grave = v end)

local InclusionSec = VisualsTab:NewSection("Inclusions")
InclusionSec:NewToggle("Include AI", "", function(v) getgenv().ESP_AI = v end)
InclusionSec:NewToggle("Include Players", "", function(v) getgenv().ESP_Players = v end)
InclusionSec:NewToggle("Include Corpses", "", function(v) getgenv().ESP_Corpses = v end)

local RemovalSec = VisualsTab:NewSection("Removals")
RemovalSec:NewToggle("Remove Visor", "", function(v) getgenv().RemoveVisor = v end)
RemovalSec:NewToggle("Remove Anton / Dozer Music", "", function(v) getgenv().RemoveMusic = v end)
RemovalSec:NewToggle("Remove Foliage", "", function(v) getgenv().NoFoliage = v end)

local TracersSec = VisualsTab:NewSection("Bullet Tracers")
TracersSec:NewToggle("Tracers Enabled", "", function(v) getgenv().Tracers = v end)
TracersSec:NewColorPicker("Tracers Color", "", Color3.fromRGB(255,0,0), function(c) getgenv().TracerColor = c end)
TracersSec:NewSlider("Tracers Lifetime", "", 5, 0.1, function(v) getgenv().TracerLife = v end)

local ViewmodelSec = VisualsTab:NewSection("Viewmodels")
ViewmodelSec:NewToggle("Enabled", "", function(v) getgenv().Viewmodel = v end)
ViewmodelSec:NewColorPicker("Color", "", Color3.fromRGB(255,0,0), function(c) getgenv().ViewmodelColor = c end)
ViewmodelSec:NewSlider("X Offset", "", 10, -10, function(v) getgenv().VM_X = v end)
ViewmodelSec:NewSlider("Y Offset", "", 10, -10, function(v) getgenv().VM_Y = v end)
ViewmodelSec:NewSlider("Z Offset", "", 10, -10, function(v) getgenv().VM_Z = v end)

local FOVSec = VisualsTab:NewSection("FOV")
FOVSec:NewToggle("FOV Circle Visible", "", function(v) getgenv().FOVCircle = v end)
FOVSec:NewSlider("FOV Circle Radius", "", 800, 10, function(v) getgenv().FOV = v end)
FOVSec:NewSlider("FOV Circle Thickness", "", 20, 1, function(v) getgenv().FOVThickness = v end)
FOVSec:NewColorPicker("FOV Circle Color", "", Color3.new(1,1,1), function(c) getgenv().FOVColor = c end)

local CrosshairSec = VisualsTab:NewSection("Crosshair")
CrosshairSec:NewToggle("Enabled", "", function(v) getgenv().CustomCrosshair = v end)
CrosshairSec:NewColorPicker("Color", "", Color3.new(0,0,0), function(c) getgenv().CrossColor = c end)
CrosshairSec:NewSlider("Spokes", "", 10, 2, function(v) getgenv().Spokes = v end)
CrosshairSec:NewSlider("Length", "", 300, 0, function(v) getgenv().CrossLength = v end)
CrosshairSec:NewSlider("Gap", "", 50, 0, function(v) getgenv().CrossGap = v end)
CrosshairSec:NewSlider("Spin Speed", "", 15, 0, function(v) getgenv().SpinSpeed = v end)

-- === COMBAT TAB ===
local AimSec = CombatTab:NewSection("Aimbot")
AimSec:NewToggle("Aimbot Enabled", "", function(v) getgenv().Aimbot = v end)
AimSec:NewToggle("Silent Aim Enabled", "", function(v) getgenv().SilentAim = v end)
AimSec:NewToggle("Resolver", "", function(v) getgenv().Resolver = v end)
AimSec:NewDropdown("Hit Target", {"Head", "HumanoidRootPart", "UpperTorso"}, function(v) getgenv().HitPart = v end)
AimSec:NewSlider("Hit Chance", "", 100, 0, function(v) getgenv().HitChance = v end)
AimSec:NewSlider("Aimbot Smoothing", "", 1, 0, function(v) getgenv().Smooth = v end)

local WeaponSec = CombatTab:NewSection("Weapon Mods")
WeaponSec:NewToggle("Remove Recoil", "", function(v) getgenv().NoRecoil = v end)
WeaponSec:NewToggle("Remove Firing Anim", "", function(v) getgenv().NoAnim = v end)
WeaponSec:NewToggle("Unlock Firemodes", "", function(v) getgenv().UnlockFire = v end)
WeaponSec:NewToggle("Remove Sway", "", function(v) getgenv().NoSway = v end)
WeaponSec:NewToggle("Remove Spread", "", function(v) getgenv().NoSpread = v end)
WeaponSec:NewToggle("Instant Reload", "", function(v) getgenv().InstReload = v end)
WeaponSec:NewToggle("Instant Equip", "", function(v) getgenv().InstEquip = v end)
WeaponSec:NewToggle("Instant Bullet", "", function(v) getgenv().InstBullet = v end)
WeaponSec:NewToggle("Unlock Firerate", "", function(v) getgenv().UnlockFR = v end)
WeaponSec:NewSlider("Bullets Per Shot", "", 100, 1, function(v) getgenv().BPS = v end)

-- === CHARACTER TAB ===
local AntiAimSec = CharacterTab:NewSection("Anti Aim")
AntiAimSec:NewToggle("Movement Controller", "", function(v) getgenv().AntiAim = v end)
AntiAimSec:NewToggle("VFly Mode", "", function(v) getgenv().VFly = v end)
AntiAimSec:NewSlider("CFrame Speed", "", 100, 1, function(v) getgenv().CFSpeed = v end)
AntiAimSec:NewSlider("VFly Speed", "", 100, 1, function(v) getgenv().VFlySpeed = v end)
AntiAimSec:NewSlider("Jump Height", "", 50, 10, function(v) getgenv().JumpPower = v end)

local OffsetSec = CharacterTab:NewSection("Anti Aim Parameters")
OffsetSec:NewLabel("Position Offset (X, Y, Z)")
OffsetSec:NewSlider("X", "", 10, -10, function(v) getgenv().PosX = v end)
OffsetSec:NewSlider("Y", "", 10, -10, function(v) getgenv().PosY = v end)
OffsetSec:NewSlider("Z", "", 10, -10, function(v) getgenv().PosZ = v end)
OffsetSec:NewSlider("Lean Angle", "", 1, 0, function(v) getgenv().Lean = v end)

local CharMisc = CharacterTab:NewSection("Char")
CharMisc:NewToggle("Equip Whisper Face", "", function() end)
CharMisc:NewToggle("Prevent Drowning", "", function(v) getgenv().NoDrown = v end)

-- === MISC TAB ===
local MiscSec = MiscTab:NewSection("Misc")
MiscSec都是一:NewToggle("Show Keybinds", "", function(v) getgenv().ShowKeys = v end)
MiscSec:NewSlider("Keybind Menu X Val", "", 0, -1000, function(v) getgenv().MenuX = v end)
MiscSec:NewSlider("Keybind Menu Y Val", "", 1, 0, function(v) getgenv().MenuY = v end)
MiscSec:NewButton("Change Player ID (Top Right)", function() getgenv().ChangeID = true end)
MiscSec:NewButton("Summon Car", function() loadstring(game:HttpGet("https://pastebin.com/raw/carspawn"))() end)
MiscSec:NewToggle("Staff Alt Detection", "", function(v) getgenv().StaffDetect = v end)
MiscSec:NewToggle("TP Kill", "", function(v) getgenv().TPKill = v end)
MiscSec:NewToggle("Peek Kill", "", function(v) getgenv().PeekKill = v end)
MiscSec:NewToggle("Explode Landmines", "", function(v) getgenv().BoomMines = v end)

-- === SETTINGS TAB ===
local PresetSec = SettingsTab:NewSection("Presets")
PresetSec:NewTextBox("Preset Name", "", function(txt) getgenv().PresetName = txt end)
PresetSec:NewButton("Save Preset", function() Library:SavePreset(getgenv().PresetName or "default") end)
PresetSec:NewButton("Load Preset", function() Library:LoadPreset(getgenv().PresetName or "default") end)
PresetSec:NewButton("Delete Preset", function() Library:DeletePreset(getgenv().PresetName or "default") end)

local ThemeSec = SettingsTab:NewSection("Theme")
ThemeSec:NewTextBox("Theme Name", "", function(txt) getgenv().ThemeName = txt end)
ThemeSec:NewButton("Save Theme", function() Library:SaveConfig(getgenv().ThemeName or "dark") end)
ThemeSec:NewButton("Load Theme", function() Library:LoadConfig(getgenv().ThemeName or "dark") end)

local CreditsSec = SettingsTab:NewSection("Credits")
CreditsSec:NewLabel("epicrakedev68 - developer")
CreditsSec:NewLabel("blockulous8d7 - developer")
CreditsSec:NewLabel("paulpogba - pr manager")
CreditsSec:NewLabel("(seriously thank u all)")

print("0xVOID FADED DELTA | Loaded | Boss Mode Active 🔥")