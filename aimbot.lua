-- 0xVoid Silent Aimbot
getgenv().Aimbot = true
spawn(function()
    while getgenv().Aimbot do
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, plr.Character.Head.Position)
            end
        end
        task.wait()
    end
end)