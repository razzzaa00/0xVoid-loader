-- 0xVOID EMPIRE | MISC
Misc:AddButton("Summon Car", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/razzzaa00/car-spawn/main/car.lua"))()
end)

Misc:AddButton("Staff Alert", function()
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.UserId < 100 or plr:GetRoleInGroup() then
            Fluent:Notify({Title = "STAFF DETECTED", Content = plr.Name.." is staff!", Duration = 10})
        end
    end
end)