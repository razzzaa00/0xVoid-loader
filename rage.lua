-- 0xVoid Rage
local Rage = getgenv().FluentTabs.Rage

Rage:AddButton("Peek Kill All", function()
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer and plr.Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
            task.wait(0.1)
            mouse1click()
        end
    end
end)

Rage:AddButton("Explode All Landmines", function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name:lower():find("landmine") or v.Name:lower():find("mine") then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
        end
    end
end)