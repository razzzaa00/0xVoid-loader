-- 0xVOID PRIVATE | CLEAN AIRHUB STYLE | razzzaa00
-- 100% WORKING ON SOLARA | NO BLANK WINDOW | REAL ESP

repeat task.wait() until game:IsLoaded()

-- // Super Fast UI (AirHub V2 Style - Fixed for Solara 2025)
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub-V2/main/src/UI%20Library.lua"))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()

-- // Change title here (your name)
local Window = GUI:Load({ Title = "0xVoid - Private", Size = UDim2.fromOffset(600, 450) })

-- // Tabs
local Visuals = Window:Tab("Visuals")
local Settings = Window:Tab("Settings")

-- // ESP Section
local ESPSection = Visuals:Section({ Name = "ESP", Side = "Left" })

-- Toggle ESP
ESPSection:Toggle({
    Name = "Enable ESP",
    Default = false,
    Callback = function(v)
        ESP.Settings.Enabled = v
        if v then
            ESP:Toggle(true)
            GUI:Notify({ Title = "0xVoid", Content = "ESP Activated", Duration = 3 })
        else
            GUI:Notify({ Title = "0xVoid", Content = "ESP Disabled", Duration = 2 })
        end
    end
})

-- Box ESP
ESPSection:Toggle({ Name = "Box", Default = true, Callback = function(v) ESP.Settings.Box.Enabled = v end })
ESPSection:Toggle({ Name = "Name", Default = true, Callback = function(v) ESP.Settings.Name.Enabled = v end })
ESPSection:Toggle({ Name = "Health Bar", Default = true, Callback = function(v) ESP.Settings.HealthBar.Enabled = v end })
ESPSection:Toggle({ Name = "Tracer", Default = true, Callback = function(v) ESP.Settings.Tracer.Enabled = v end })
ESPSection:Toggle({ Name = "Head Dot", Default = false, Callback = function(v) ESP.Settings.HeadDot.Enabled = v end })

-- Colors
ESPSection:Colorpicker({ Name = "Team Color", Default = Color3.fromRGB(0, 255, 0), Callback = function(c) ESP.Settings.TeamColor = c end })
ESPSection:Colorpicker({ Name = "Enemy Color", Default = Color3.fromRGB(255, 0, 0), Callback = function(c) ESP.Settings.EnemyColor = c end })

-- Team Check
ESPSection:Toggle({ Name = "Team Check", Default = false, Callback = function(v) ESP.Settings.TeamCheck = v end })

-- Settings Tab
local ConfigSection = Settings:Section({ Name = "Config", Side = "Left" })
ConfigSection:Keybind({ Name = "Toggle UI", Default = Enum.KeyCode.RightShift, Callback = function() Window:Toggle() end })
ConfigSection:Button({ Name = "Unload Script", Callback = function() GUI:Unload(); ESP:Exit() end })

local Info = Settings:Section({ Name = "Info", Side = "Right" })
Info:Label("0xVoid Private")
Info:Label("Owner: razzzaa00")
Info:Label("Best ESP on Solara 2025")
Info:Button({ Name = "Copy Discord", Callback = function() setclipboard("your-discord-here") end })

-- Load ESP
ESP:Toggle(true)
ESP.Settings.Enabled = false  -- start off
ESP.Settings.Text.Size = 14
ESP.Settings.Box.Thickness = 2
ESP.Settings.Tracer.Thickness = 2

GUI:Notify({ Title = "0xVoid Private", Content = "Loaded successfully — you're untouchable 🔥", Duration = 5 })

print("0xVoid Private — ESP Ready | razzzaa00")