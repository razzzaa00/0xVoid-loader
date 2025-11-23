-- 0xVoid ESP | FULLY FLUENT COMPATIBLE
local Visuals = getgenv().FluentTabs.Visuals

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = true
ESP.Tracers = true
ESP.Boxes = true
ESP.Names = true

Visuals:AddToggle("esp_enabled", {Title = "Enable ESP", Default = true}, function(state)
    ESP.Settings.Enabled = state
end)

Visuals:AddToggle("esp_boxes", {Title = "Boxes", Default = true}, function(state)
    ESP.Settings.Box.Enabled = state
end)

Visuals:AddToggle("esp_names", {Title = "Names", Default = true}, function(state)
    ESP.Settings.Name.Enabled = state
end)

Visuals:AddToggle("esp_tracers", {Title = "Tracers", Default = true}, function(state)
    ESP.Settings.Tracer.Enabled = state
end)

Visuals:AddToggle("esp_health", {Title = "Health Bar", Default = true}, function(state)
    ESP.Settings.HealthBar.Enabled = state
end)

Visuals:AddToggle("esp_chams", {Title = "Chams", Default = false}, function(state)
    ESP.Settings.Chams.Enabled = state
end)

Visuals:AddToggle("esp_teamcheck", {Title = "Team Check", Default = false}, function(state)
    ESP.Settings.TeamCheck = state
end)