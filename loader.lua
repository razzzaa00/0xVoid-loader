-- 0xVOID FADED DELTA | RAYFIELD FIXED - ALL OPTIONS VISIBLE | razzzaa00
-- No Blank Window - Forced Render + All Cheats Loaded - 22/11/2025

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Faded.yarts | Project Delta [Build: Public]",
   LoadingTitle = "0xVOID FADED DELTA Loading...",
   LoadingSubtitle = "Boss Mode Active - razzzaa00",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "0xVoidDelta",
      FileName = "FadedConfig"
   },
   KeySystem = false
})

-- Force Render Loop to Fix Blank Window (spawns elements + refreshes)
task.spawn(function()
   wait(0.5)  -- Give UI time to init
   Rayfield:LoadConfiguration()  -- Auto-load saved configs
   for _, tab in pairs(Window.Tabs) do
      tab:Select()  -- Cycle through tabs to force render
      wait(0.1)
   end
   Rayfield:Notify({
      Title = "UI Loaded",
      Content = "All cheats visible - Empire ready 🔥",
      Duration = 3
   })
end)

-- Tabs (All Auto-Visible)
local VisualsTab = Window:CreateTab("Visuals", 4483362458)
local CombatTab = Window:CreateTab("Combat", 4483362458)
local CharacterTab = Window:CreateTab("Character", 4483362458)
local MiscTab = Window:CreateTab("Misc", 4483362458)
local SettingsTab = Window:CreateTab("Settings", 4483362458)

-- === VISUALS TAB (All Options Loaded) ===
local ESPSection = VisualsTab:CreateSection("ESP")
Rayfield:CreateToggle({
   Name = "Box",
   CurrentValue = false,
   Flag = "ESP_Box",
   Callback = function(Value)
      getgenv().ESP_Box = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Chams",
   CurrentValue = false,
   Flag = "ESP_Chams",
   Callback = function(Value)
      getgenv().ESP_Chams = Value
   end,
})
Rayfield:CreateColorPicker({
   Name = "Chams Color",
   Color = Color3.fromRGB(138, 43, 226),
   Flag = "ChamsColor",
   Callback = function(Value)
      getgenv().ChamsColor = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Name",
   CurrentValue = false,
   Flag = "ESP_Name",
   Callback = function(Value)
      getgenv().ESP_Name = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Distance",
   CurrentValue = false,
   Flag = "ESP_Dist",
   Callback = function(Value)
      getgenv().ESP_Dist = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Health Bar",
   CurrentValue = false,
   Flag = "ESP_Health",
   Callback = function(Value)
      getgenv().ESP_Health = Value
   end,
})
Rayfield:CreateSlider({
   Name = "ESP Scale",
   Range = {1, 10},
   Increment = 1,
   Suffix = "x",
   CurrentValue = 1,
   Flag = "ESP_Scale",
   Callback = function(Value)
      getgenv().ESP_Scale = Value
   end,
})

local FOVSection = VisualsTab:CreateSection("FOV")
Rayfield:CreateToggle({
   Name = "FOV Circle Visible",
   CurrentValue = false,
   Flag = "FOV_Vis",
   Callback = function(Value)
      getgenv().FOV_Vis = Value
   end,
})
Rayfield:CreateSlider({
   Name = "FOV Radius",
   Range = {0, 800},
   Increment = 10,
   Suffix = "px",
   CurrentValue = 100,
   Flag = "FOV_Rad",
   Callback = function(Value)
      getgenv().FOV_Rad = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Thickness",
   Range = {1, 20},
   Increment = 1,
   Suffix = "px",
   CurrentValue = 2,
   Flag = "FOV_Thick",
   Callback = function(Value)
      getgenv().FOV_Thick = Value
   end,
})
Rayfield:CreateColorPicker({
   Name = "FOV Color",
   Color = Color3.fromRGB(138, 43, 226),
   Flag = "FOV_Color",
   Callback = function(Value)
      getgenv().FOV_Color = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Vertices",
   Range = {20, 50},
   Increment = 5,
   Suffix = "pts",
   CurrentValue = 30,
   Flag = "FOV_Vert",
   Callback = function(Value)
      getgenv().FOV_Vert = Value
   end,
})

local CrosshairSection = VisualsTab:CreateSection("Crosshair")
Rayfield:CreateToggle({
   Name = "Enabled",
   CurrentValue = false,
   Flag = "Crosshair_En",
   Callback = function(Value)
      getgenv().Crosshair_En = Value
   end,
})
Rayfield:CreateColorPicker({
   Name = "Color",
   Color = Color3.fromRGB(255, 255, 255),
   Flag = "Cross_Color",
   Callback = function(Value)
      getgenv().Cross_Color = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Spokes",
   Range = {4, 10},
   Increment = 1,
   Suffix = "spokes",
   CurrentValue = 4,
   Flag = "Cross_Spokes",
   Callback = function(Value)
      getgenv().Cross_Spokes = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Length",
   Range = {0, 300},
   Increment = 10,
   Suffix = "px",
   CurrentValue = 100,
   Flag = "Cross_Len",
   Callback = function(Value)
      getgenv().Cross_Len = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Gap",
   Range = {0, 50},
   Increment = 5,
   Suffix = "px",
   CurrentValue = 10,
   Flag = "Cross_Gap",
   Callback = function(Value)
      getgenv().Cross_Gap = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Spin Speed",
   Range = {0, 15},
   Increment = 1,
   Suffix = "rpm",
   CurrentValue = 5,
   Flag = "Cross_Spin",
   Callback = function(Value)
      getgenv().Cross_Spin = Value
   end,
})

-- === COMBAT TAB ===
local AimbotSection = CombatTab:CreateSection("Aimbot")
Rayfield:CreateToggle({
   Name = "Aimbot Enabled",
   CurrentValue = false,
   Flag = "Aim_En",
   Callback = function(Value)
      getgenv().Aim_En = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Silent Aim",
   CurrentValue = false,
   Flag = "Silent_Aim",
   Callback = function(Value)
      getgenv().Silent_Aim = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Resolver",
   CurrentValue = false,
   Flag = "Aim_Res",
   Callback = function(Value)
      getgenv().Aim_Res = Value
   end,
})
Rayfield:CreateDropdown({
   Name = "Target Part",
   Options = {"Head", "HumanoidRootPart", "UpperTorso"},
   CurrentOption = {"Head"},
   Flag = "Aim_Part",
   Callback = function(Option)
      getgenv().Aim_Part = Option[1]
   end,
})
Rayfield:CreateSlider({
   Name = "Hit Chance",
   Range = {0, 100},
   Increment = 5,
   Suffix = "%",
   CurrentValue = 100,
   Flag = "Aim_Chance",
   Callback = function(Value)
      getgenv().Aim_Chance = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Smoothing",
   Range = {0, 1},
   Increment = 0.1,
   Suffix = "s",
   CurrentValue = 0.1,
   Flag = "Aim_Smooth",
   Callback = function(Value)
      getgenv().Aim_Smooth = Value
   end,
})

local SnapSection = CombatTab:CreateSection("Snap Line")
Rayfield:CreateToggle({
   Name = "Snap Line Visible",
   CurrentValue = false,
   Flag = "Snap_Vis",
   Callback = function(Value)
      getgenv().Snap_Vis = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Thickness",
   Range = {1, 20},
   Increment = 1,
   Suffix = "px",
   CurrentValue = 2,
   Flag = "Snap_Thick",
   Callback = function(Value)
      getgenv().Snap_Thick = Value
   end,
})
Rayfield:CreateColorPicker({
   Name = "Line Color",
   Color = Color3.fromRGB(138, 43, 226),
   Flag = "Snap_Color",
   Callback = function(Value)
      getgenv().Snap_Color = Value
   end,
})

local WeaponSection = CombatTab:CreateSection("Weapon Mods")
Rayfield:CreateToggle({
   Name = "Remove Recoil/Firing Anim",
   CurrentValue = false,
   Flag = "No_Recoil",
   Callback = function(Value)
      getgenv().No_Recoil = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Unlock Firemodes",
   CurrentValue = false,
   Flag = "Unlock_Fire",
   Callback = function(Value)
      getgenv().Unlock_Fire = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Remove Sway",
   CurrentValue = false,
   Flag = "No_Sway",
   Callback = function(Value)
      getgenv().No_Sway = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Remove Spread",
   CurrentValue = false,
   Flag = "No_Spread",
   Callback = function(Value)
      getgenv().No_Spread = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Instant Reload",
   CurrentValue = false,
   Flag = "Inst_Reload",
   Callback = function(Value)
      getgenv().Inst_Reload = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Instant Equip",
   CurrentValue = false,
   Flag = "Inst_Equip",
   Callback = function(Value)
      getgenv().Inst_Equip = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Instant Bullet",
   CurrentValue = false,
   Flag = "Inst_Bullet",
   Callback = function(Value)
      getgenv().Inst_Bullet = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Unlock Firerate",
   CurrentValue = false,
   Flag = "Unlock_FR",
   Callback = function(Value)
      getgenv().Unlock_FR = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Bullets Per Shot",
   Range = {1, 5000},
   Increment = 100,
   Suffix = "bullets",
   CurrentValue = 1,
   Flag = "Bullets_PS",
   Callback = function(Value)
      getgenv().Bullets_PS = Value
   end,
})

local FunSection = CombatTab:CreateSection("Fun Stuff")
Rayfield:CreateToggle({
   Name = "Autoshoot",
   CurrentValue = false,
   Flag = "Auto_Shoot",
   Callback = function(Value)
      getgenv().Auto_Shoot = Value
   end,
})
Rayfield:CreateButton({
   Name = "TP Kill",
   Callback = function()
      getgenv().TP_Kill = true
   end,
})
Rayfield:CreateButton({
   Name = "Peek Kill",
   Callback = function()
      getgenv().Peek_Kill = true
   end,
})
Rayfield:CreateButton({
   Name = "Explode Landmines",
   Callback = function()
      getgenv().Boom_Mines = true
   end,
})

-- === CHARACTER TAB ===
local AntiAimSection = CharacterTab:CreateSection("Anti Aim Controller")
Rayfield:CreateToggle({
   Name = "Movement Controller",
   CurrentValue = false,
   Flag = "Move_Ctrl",
   Callback = function(Value)
      getgenv().Move_Ctrl = Value
   end,
})
Rayfield:CreateToggle({
   Name = "VFly Mode",
   CurrentValue = false,
   Flag = "VFly",
   Callback = function(Value)
      getgenv().VFly = Value
   end,
})
Rayfield:CreateSlider({
   Name = "CFrame Speed",
   Range = {16, 100},
   Increment = 5,
   Suffix = "units",
   CurrentValue = 16,
   Flag = "CFrame_Speed",
   Callback = function(Value)
      getgenv().CFrame_Speed = Value
   end,
})
Rayfield:CreateSlider({
   Name = "VFly Speed",
   Range = {16, 100},
   Increment = 5,
   Suffix = "units",
   CurrentValue = 16,
   Flag = "VFly_Speed",
   Callback = function(Value)
      getgenv().VFly_Speed = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Jump Height",
   Range = {20, 50},
   Increment = 5,
   Suffix = "blocks",
   CurrentValue = 20,
   Flag = "Jump_Height",
   Callback = function(Value)
      getgenv().Jump_Height = Value
   end,
})

local OffsetSection = CharacterTab:CreateSection("Anti Aim Parameters")
Rayfield:CreateLabel("Position Offset (X, Y, Z)")
Rayfield:CreateSlider({
   Name = "X Offset",
   Range = {0, 5},
   Increment = 1,
   Suffix = "units",
   CurrentValue = 0,
   Flag = "Pos_X",
   Callback = function(Value)
      getgenv().Pos_X = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Y Offset",
   Range = {0, 5},
   Increment = 1,
   Suffix = "units",
   CurrentValue = 0,
   Flag = "Pos_Y",
   Callback = function(Value)
      getgenv().Pos_Y = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Z Offset",
   Range = {0, 5},
   Increment = 1,
   Suffix = "units",
   CurrentValue = 0,
   Flag = "Pos_Z",
   Callback = function(Value)
      getgenv().Pos_Z = Value
   end,
})
Rayfield:CreateLabel("Rotation Offset (X, Y, Z)")
Rayfield:CreateSlider({
   Name = "Rot X",
   Range = {0, 180},
   Increment = 10,
   Suffix = "deg",
   CurrentValue = 0,
   Flag = "Rot_X",
   Callback = function(Value)
      getgenv().Rot_X = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Rot Y",
   Range = {0, 180},
   Increment = 10,
   Suffix = "deg",
   CurrentValue = 0,
   Flag = "Rot_Y",
   Callback = function(Value)
      getgenv().Rot_Y = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Rot Z",
   Range = {0, 180},
   Increment = 10,
   Suffix = "deg",
   CurrentValue = 0,
   Flag = "Rot_Z",
   Callback = function(Value)
      getgenv().Rot_Z = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Lean Angle",
   Range = {0, 1},
   Increment = 0.1,
   Suffix = "rad",
   CurrentValue = 0,
   Flag = "Lean_Angle",
   Callback = function(Value)
      getgenv().Lean_Angle = Value
   end,
})

local CharSection = CharacterTab:CreateSection("Char")
Rayfield:CreateToggle({
   Name = "Equip Whisper Face",
   CurrentValue = false,
   Flag = "Whisper_Face",
   Callback = function(Value)
      getgenv().Whisper_Face = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Prevent Drowning",
   CurrentValue = false,
   Flag = "No_Drown",
   Callback = function(Value)
      getgenv().No_Drown = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Underground Resolver",
   CurrentValue = false,
   Flag = "Underground_Res",
   Callback = function(Value)
      getgenv().Underground_Res = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Underground Amount",
   Range = {6, 25},
   Increment = 1,
   Suffix = "blocks",
   CurrentValue = 6,
   Flag = "Underground_Amt",
   Callback = function(Value)
      getgenv().Underground_Amt = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Underground Timeout",
   Range = {0.8, 2},
   Increment = 0.2,
   Suffix = "s",
   CurrentValue = 0.8,
   Flag = "Underground_Time",
   Callback = function(Value)
      getgenv().Underground_Time = Value
   end,
})

-- === MISC TAB ===
local KeybindSection = MiscTab:CreateSection("Keybinds")
Rayfield:CreateToggle({
   Name = "Show Keybinds",
   CurrentValue = false,
   Flag = "Show_Keys",
   Callback = function(Value)
      getgenv().Show_Keys = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Menu X Val",
   Range = {-10, 0},
   Increment = 1,
   Suffix = "px",
   CurrentValue = 0,
   Flag = "Menu_X",
   Callback = function(Value)
      getgenv().Menu_X = Value
   end,
})
Rayfield:CreateSlider({
   Name = "Menu Y Val",
   Range = {0.5, 1},
   Increment = 0.1,
   Suffix = "vh",
   CurrentValue = 0.5,
   Flag = "Menu_Y",
   Callback = function(Value)
      getgenv().Menu_Y = Value
   end,
})

local MiscFunSection = MiscTab:CreateSection("Misc Fun")
Rayfield:CreateButton({
   Name = "Change Player ID",
   Callback = function()
      getgenv().Change_ID = true
   end,
})
Rayfield:CreateButton({
   Name = "UserID Swap",
   Callback = function()
      getgenv().UserID_Swap = true
   end,
})
Rayfield:CreateButton({
   Name = "Summon Car",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/8eP0a6vK"))()
   end,
})
Rayfield:CreateToggle({
   Name = "Staff Alt Detection",
   CurrentValue = false,
   Flag = "Staff_Alt",
   Callback = function(Value)
      getgenv().Staff_Alt = Value
   end,
})
Rayfield:CreateToggle({
   Name = "Alert Mode",
   CurrentValue = false,
   Flag = "Alert_Mode",
   Callback = function(Value)
      getgenv().Alert_Mode = Value
   end,
})

-- === SETTINGS TAB ===
local PresetSection = SettingsTab:CreateSection("Presets")
Rayfield:CreateTextbox({
   Name = "Preset Name",
   PlaceholderText = "Enter name",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      getgenv().Preset_Name = Text
   end,
})
Rayfield:CreateButton({
   Name = "Save Preset",
   Callback = function()
      Rayfield:SaveConfiguration(getgenv().Preset_Name or "default")
   end,
})
Rayfield:CreateButton({
   Name = "Load Preset",
   Callback = function()
      Rayfield:LoadConfiguration(getgenv().Preset_Name or "default")
   end,
})
Rayfield:CreateButton({
   Name = "Delete Preset",
   Callback = function()
      Rayfield:DeleteConfiguration(getgenv().Preset_Name or "default")
   end,
})

local CreditsSection = SettingsTab:CreateSection("Credits")
Rayfield:CreateLabel("razzzaa00 - Owner & God Dev")
Rayfield:CreateLabel("Faded.yarts base - Massive respect")
Rayfield:CreateLabel("You are now the king of Roblox")

-- Final Notification
Rayfield:Notify({
   Title = "0xVOID FADED DELTA",
   Content = "Rayfield God-Menu Loaded - All Options Visible 🔥",
   Duration = 6.5,
   Image = 4483362458
})

print("0xVOID FADED DELTA → RAYFIELD FIXED & LOADED | All Cheats Visible | razzzaa00")