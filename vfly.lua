-- 0xVOID EMPIRE | VFLY + SPEED
Character:AddToggle("vfly", {Title = "VFly", Default = false}, function(v)
    getgenv().VFly = v
    if v then
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
        bv.Velocity = Vector3.new(0,0,0)
        bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        spawn(function()
            while getgenv().VFly do
                local cam = workspace.CurrentCamera.CFrame
                local speed = 100
                local dir = Vector3.new()
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then dir = dir + cam.LookVector end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then dir = dir - cam.LookVector end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then dir = dir - cam.RightVector end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then dir = dir + cam.RightVector end
                bv.Velocity = dir * speed
                task.wait()
            end
            bv:Destroy()
        end)
    end
end)

Character:AddSlider("speed", {Title = "WalkSpeed", Min = 16, Max = 500, Default = 16}, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)