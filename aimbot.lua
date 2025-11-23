-- 0xVOID EMPIRE | AIMBOT MODULE
getgenv().SilentAim = false

Combat:AddToggle("silent_aim", {Title = "Silent Aim", Default = false}, function(v)
    getgenv().SilentAim = v
end)

Combat:AddSlider("fov", {Title = "FOV Radius", Min = 0, Max = 800, Default = 120}, function(v)
    getgenv().FOV = v
end)

spawn(function()
    while task.wait() do
        if getgenv().SilentAim then
            local closest = nil
            local dist = getgenv().FOV or 120
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                    local pos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.Head.Position)
                    local center = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2, workspace.CurrentCamera.ViewportSize.Y/2)
                    local mag = (Vector2.new(pos.X, pos.Y) - center).Magnitude
                    if mag < dist and onScreen then
                        dist = mag
                        closest = plr.Character.Head
                    end
                end
            end
            if closest then
                mousemoverel((closest.Position - workspace.CurrentCamera.CFrame.Position).Unit.X * 5, (closest.Position - workspace.CurrentCamera.CFrame.Position).Unit.Y * 5)
            end
        end
    end
end)