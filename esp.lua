-- 0xVOID EMPIRE | ESP MODULE
local ESP = {}
getgenv().ESP_Enabled = false

Visuals:AddToggle("esp_boxes", {Title = "ESP Boxes", Default = false}, function(v)
    getgenv().ESP_Enabled = v
    if v then
        spawn(function()
            while getgenv().ESP_Enabled do
                for _, plr in pairs(game.Players:GetPlayers()) do
                    if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                        local head = plr.Character.Head
                        local root = plr.Character.HumanoidRootPart
                        local vec, onScreen = workspace.CurrentCamera:WorldToViewportPoint(head.Position)
                        if onScreen then
                            local box = Drawing.new("Square")
                            box.Visible = true
                            box.Color = Color3.fromRGB(180, 0, 255)
                            box.Thickness = 2
                            box.Filled = false
                            box.Size = Vector2.new(2000 / vec.Z, 3000 / vec.Z)
                            box.Position = Vector2.new(vec.X - box.Size.X/2, vec.Y - box.Size.Y/2)
                            
                            local name = Drawing.new("Text")
                            name.Text = plr.Name .. " ["..math.floor((root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude).."m]"
                            name.Position = Vector2.new(vec.X, vec.Y - 40)
                            name.Size = 16
                            name.Center = true
                            name.Outline = true
                            name.Visible = true
                        end
                    end
                end
                task.wait(0.05)
            end
        end)
    end
end)

Visuals:AddToggle("chams", {Title = "Chams", Default = false}, function(v)
    -- Real chams logic here (Highlight)
end)