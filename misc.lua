-- 0xVoid Misc
local Misc = getgenv().FluentTabs.Misc

Misc:AddButton("Summon Car", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/car-spawn/main/car.lua"))()
end)

Misc:AddButton("Staff Detector", function()
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.UserId < 100 or plr.Name:lower():find("mod") then
            Fluent:Notify({Title = "STAFF IN SERVER", Content = plr.Name .. " is staff!", Duration = 10})
        end
    end
end)