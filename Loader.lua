-- Faded Delta Multi-Tab Cheat Loader | Made for the King
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Faded Delta - Private Build | Boss Edition", "DarkTheme")

-- Tabs
local VisualTab   = Window:NewTab("Visuals / ESP")
local CombatTab   = Window:NewTab("Combat / Aim")
local CharTab     = Window:NewTab("Character")
local MiscTab     = Window:NewTab("Misc")
local SettingsTab = Window:NewTab("Settings / Themes")

-- Sections (will be filled by separate modules)
local ESPSection     = VisualTab:NewSection("ESP Features")
local AimSection     = CombatTab:NewSection("Aimbot")
local CharSection    = CharTab:NewSection("Character Mods")
local MiscSection    = MiscTab:NewSection("Miscellaneous")
local ThemeSection   = SettingsTab:NewSection("Themes & Presets")

-- Load separated modules
loadstring(game:HttpGet("https://raw.githubusercontent.com/yourrepo/faded-delta-esp/main/esp.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yourrepo/faded-delta-aim/main/aimbot.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yourrepo/faded-delta-char/main/char.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yourrepo/faded-delta-misc/main/misc.lua"))()