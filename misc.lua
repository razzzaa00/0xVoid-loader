-- 0xVoid Misc | From Faded.yarts Source | razzzaa00
getgenv().Misc_Enabled = getgenv().Misc_Enabled or false

if getgenv().Misc_Enabled then
    MiscTab:AddButton("Summon Car", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/faded-yarls/car-spawn/main/car.lua"))()
    end)
    
    MiscTab:AddButton("Auto TP Kill", function()
        spawn(function()
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr ~= LocalPlayer then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
                    task.wait(0.1)
                    mouse1click()
                end
            end
        end)
    end)
    
    MiscTab:AddButton("Explode Landmines", function()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj.Name == "Landmine" then
                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, obj, 0)
                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, obj, 1)
            end
        end
    end)
    
    MiscTab:AddButton("Change Player ID (UserID Swap)", function()
        LocalPlayer.UserId = math.random(1000000, 9999999)
        LocalPlayer.DisplayName = "Boss" .. math.random(1000, 9999)
    end)
end