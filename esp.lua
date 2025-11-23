-- 0xVoid ESP | From Faded.yarts Source | razzzaa00
getgenv().ESP_Enabled = getgenv().ESP_Enabled or false

if getgenv().ESP_Enabled then
    local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()
    ESP.Settings.Enabled = true
    ESP:Toggle(true)
    
    -- Boxes
    VisualsTab:AddToggle("esp_box", {Title = "Boxes", Default = true}, function(v)
        ESP.Settings.Box.Enabled = v
    end)
    
    -- Names
    VisualsTab:AddToggle("esp_name", {Title = "Names", Default = true}, function(v)
        ESP.Settings.Name.Enabled = v
    end)
    
    -- Health Bar
    VisualsTab:AddToggle("esp_health", {Title = "Health Bar", Default = true}, function(v)
        ESP.Settings.HealthBar.Enabled = v
    end)
    
    -- Tracers
    VisualsTab:AddToggle("esp_tracer", {Title = "Tracers", Default = true}, function(v)
        ESP.Settings.Tracer.Enabled = v
    end)
    
    -- Chams
    VisualsTab:AddToggle("esp_chams", {Title = "Chams", Default = false}, function(v)
        ESP.Settings.Chams.Enabled = v
    end)
    
    -- Team Check
    VisualsTab:AddToggle("esp_team", {Title = "Team Check", Default = false}, function(v)
        ESP.Settings.TeamCheck = v
    end)
    
    -- Colors
    VisualsTab:AddColorPicker("esp_enemy_color", {Title = "Enemy Color", Default = Color3.fromRGB(255,0,0)}, function(c)
        ESP.Settings.EnemyColor = c
    end)
    
    VisualsTab:AddColorPicker("esp_team_color", {Title = "Team Color", Default = Color3.fromRGB(0,255,0)}, function(c)
        ESP.Settings.TeamColor = c
    end)
end