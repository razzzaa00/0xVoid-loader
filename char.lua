-- 0xVoid Character Mods | FLUENT FIXED
local Character = getgenv().FluentTabs.Character
local Player = game.Players.LocalPlayer

Character:AddToggle("fly", {Title = "VFly (Press E)", Default = false}, function(state)
    getgenv().Fly = state
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Functions/Fly.lua"))()
    end
end)

Character:AddSlider("walkspeed", {Title = "WalkSpeed", Min = 16, Max = 500, Default = 16}, function(v)
    Player.Character.Humanoid.WalkSpeed = v
end)

Character:AddSlider("jumppower", {Title = "Jump Power", Min = 50, Max = 300, Default = 50}, function(v)
    Player.Character.Humanoid.JumpPower = v
end)

Character:AddToggle("noclip", {Title = "Noclip", Default = false}, function(state)
    getgenv().Noclip = state
    spawn(function()
        while getgenv().Noclip do
            for _, part in pairs(Player.Character:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = false end
            end
            task.wait()
        end
    end)
end)

Character:AddToggle("infjump", {Title = "Infinite Jump", Default = false}, function(state)
    getgenv().InfJump = state
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if getgenv().InfJump then
            Player.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)