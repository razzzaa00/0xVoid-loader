-- faded-delta-esp/main/esp.lua
getgenv().ESPSettings = {
    Box = true,
    Name = true,
    Health = true,
    Distance = true,
    Chams = true,
    TeamCheck = false,
    Scale = 2
}

local ESPSection = _G.ESPSection -- passed from loader
ESPSection:NewToggle("Box ESP", "3D Boxes", function(state) getgenv().ESPSettings.Box = state end)
ESPSection:NewToggle("Name ESP", "", function(state) getgenv().ESPSettings.Name = state end)
ESPSection:NewToggle("Health Bar", "", function(state) getgenv().ESPSettings.Health = state end)
ESPSection:NewToggle("Distance", "", function(state) getgenv().ESPSettings.Distance = state end)
ESPSection:NewToggle("Chams", "Filled players", function(state) getgenv().ESPSettings.Chams = state end)
ESPSection:NewSlider("ESP Scale", "", 10, 1, function(v) getgenv().ESPSettings.Scale = v end)

-- Actual ESP loop (runs once)
spawn(function()
    while wait(0.5) do
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                -- your 3D box + chams + text ESP code here (undetected drawing API)
            end
        end
    end
end)