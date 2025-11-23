-- 0xVOID EMPIRE | RAGE FEATURES
Rage:AddButton("Peek Kill", function()
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + Vector3.new(0, -5, 0)
            task.wait(0.1)
            mouse1click()
        end
    end
end)

Rage:AddButton("Explode All Landmines", function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name:find("Landmine") or v.Name:find("Mine") then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
        end
    end
end)