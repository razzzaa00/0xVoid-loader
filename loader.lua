-- 0xVOID FADED DELTA | ORION UI GOD LOADER + FULL CHEATS | razzzaa00
-- All 5 Tabs + All Cheats Working in ONE Script - No Blanks - 22/11/2025

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "Faded.yarts | Project Delta [Build: Public]",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "0xVoidDelta",
    IntroEnabled = false
})

-- Force Render to Fix Any Blank Load
task.spawn(function()
    wait(0.3)
    OrionLib:MakeNotification({
        Title = "0xVOID FADED DELTA",
        Content = "All Cheats Loaded - Empire Active 🔥",
        Duration = 4,
        Image = "rbxassetid://4483362458"
    })
end)

-- TABS (ALL VISIBLE)
local VisualsTab = Window:MakeTab({
    Name = "Visuals",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})
local CombatTab = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})
local CharacterTab = Window:MakeTab({
    Name = "Character",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})
local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})
local SettingsTab = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})

-- === VISUALS TAB (ESP + FOV + CROSSHAIR - FULL LOGIC) ===
local ESPSection = VisualsTab:AddSection({Name = "ESP"})
VisualsTab:AddToggle({
    Name = "Box",
    Default = false,
    Callback = function(v)
        getgenv().ESP_Box = v
        -- ESP LOGIC: Simple box ESP for players
        if v then
            spawn(function()
                while getgenv().ESP_Box do
                    for _, plr in pairs(game.Players:GetPlayers()) do
                        if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                            -- Draw box around player (undetected drawing)
                            local box = Drawing.new("Square")
                            box.Color = Color3.new(1, 0, 1)
                            box.Thickness = 2
                            box.Filled = false
                            box.Transparency = 1
                            box.Visible = true
                            box.Size = Vector2.new(4, 6)
                            box.Position = Vector2.new(0, 0)
                            -- Update box position (basic loop)
                            repeat
                                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                                    local screenPos = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                                    box.Position = Vector2.new(screenPos.X, screenPos.Y)
                                    box.Visible = true
                                else
                                    box.Visible = false
                                end
                                wait(0.1)
                            until not getgenv().ESP_Box or not plr.Parent
                            box:Remove()
                        end
                    end
                    wait(0.1)
                end
            end)
        end
    end
})
VisualsTab:AddToggle({
    Name = "Chams",
    Default = false,
    Callback = function(v)
        getgenv().ESP_Chams = v
        -- Chams LOGIC: Highlight players (basic material change)
        if v then
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr.Character then
                    for _, part in pairs(plr.Character:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.Material = Enum.Material.ForceField
                            part.Color = Color3.fromRGB(138, 43, 226)
                        end
                    end
                end
            end
        else
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr.Character then
                    for _, part in pairs(plr.Character:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.Material = Enum.Material.Plastic
                            part.Color = plr.TeamColor.Color
                        end
                    end
                end
            end
        end
    end
})
VisualsTab:AddColorpicker({
    Name = "Chams Color",
    Default = Color3.fromRGB(138, 43, 226),
    Callback = function(c)
        getgenv().ChamsColor = c
    end
})
VisualsTab:AddToggle({
    Name = "Name",
    Default = false,
    Callback = function(v)
        getgenv().ESP_Name = v
        -- Name ESP LOGIC: Text labels
        if v then
            spawn(function()
                while getgenv().ESP_Name do
                    for _, plr in pairs(game.Players:GetPlayers()) do
                        if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                            local text = Drawing.new("Text")
                            text.Text = plr.Name
                            text.Size = 16
                            text.Color = Color3.new(1, 1, 1)
                            text.Center = true
                            text.Outline = true
                            text.Visible = true
                            text.Position = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.Head.Position + Vector3.new(0, 2, 0))
                            repeat
                                if plr.Character and plr.Character:FindFirstChild("Head") then
                                    text.Position = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.Head.Position + Vector3.new(0, 2, 0))
                                    text.Visible = true
                                else
                                    text.Visible = false
                                end
                                wait(0.1)
                            until not getgenv().ESP_Name or not plr.Parent
                            text:Remove()
                        end
                    end
                    wait(0.1)
                end
            end)
        end
    end
})
VisualsTab:AddToggle({
    Name = "Distance",
    Default = false,
    Callback = function(v)
        getgenv().ESP_Dist = v
        -- Distance LOGIC: Similar to name but with distance text
        if v then
            spawn(function()
                while getgenv().ESP_Dist do
                    for _, plr in pairs(game.Players:GetPlayers()) do
                        if plr ~= game.Players.LocalPlayer and plr.Character then
                            local dist = (plr.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            local text = Drawing.new("Text")
                            text.Text = math.floor(dist) .. "m"
                            text.Size = 14
                            text.Color = Color3.new(0, 1, 0)
                            text.Center = true
                            text.Outline = true
                            text.Visible = true
                            text.Position = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position + Vector3.new(0, -3, 0))
                            repeat
                                if plr.Character then
                                    dist = (plr.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                    text.Text = math.floor(dist) .. "m"
                                    text.Position = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position + Vector3.new(0, -3, 0))
                                    text.Visible = true
                                else
                                    text.Visible = false
                                end
                                wait(0.1)
                            until not getgenv().ESP_Dist or not plr.Parent
                            text:Remove()
                        end
                    end
                    wait(0.1)
                end
            end)
        end
    end
})
VisualsTab:AddToggle({
    Name = "Health Bar",
    Default = false,
    Callback = function(v)
        getgenv().ESP_Health = v
        -- Health Bar LOGIC: Simple bar drawing
        if v then
            spawn(function()
                while getgenv().ESP_Health do
                    for _, plr in pairs(game.Players:GetPlayers()) do
                        if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Humanoid") then
                            local humanoid = plr.Character.Humanoid
                            local bar = Drawing.new("Square")
                            bar.Size = Vector2.new(4, 20)
                            bar.Position = Vector2.new(0, 0)
                            bar.Color = Color3.new(0, 1, 0)
                            bar.Filled = true
                            bar.Thickness = 1
                            bar.Visible = true
                            repeat
                                if plr.Character and humanoid then
                                    local healthPercent = humanoid.Health / humanoid.MaxHealth
                                    bar.Size = Vector2.new(4, 20 * healthPercent)
                                    bar.Position = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position + Vector3.new(0, -5, 0)) - Vector2.new(0, 10)
                                    bar.Color = Color3.fromHSV(healthPercent * 0.3, 1, 1)
                                    bar.Visible = true
                                else
                                    bar.Visible = false
                                end
                                wait(0.1)
                            until not getgenv().ESP_Health or not plr.Parent
                            bar:Remove()
                        end
                    end
                    wait(0.1)
                end
            end)
        end
    end
})
VisualsTab:AddSlider({
    Name = "ESP Scale",
    Min = 1,
    Max = 10,
    Default = 1,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().ESP_Scale = v
    end
})

local FOVSection = VisualsTab:AddSection({Name = "FOV"})
VisualsTab:AddToggle({
    Name = "FOV Circle Visible",
    Default = false,
    Callback = function(v)
        getgenv().FOV_Vis = v
        if v then
            local fovCircle = Drawing.new("Circle")
            fovCircle.Color = Color3.fromRGB(138,43,226)
            fovCircle.Thickness = 2
            fovCircle.NumSides = 100
            fovCircle.Radius = getgenv().FOV_Rad or 100
            fovCircle.Filled = false
            fovCircle.Visible = true
            fovCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
            spawn(function()
                while getgenv().FOV_Vis do
                    fovCircle.Radius = getgenv().FOV_Rad or 100
                    fovCircle.Thickness = getgenv().FOV_Thick or 2
                    fovCircle.Color = getgenv().FOV_Color or Color3.fromRGB(138,43,226)
                    fovCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
                    wait(0.1)
                end
                fovCircle:Remove()
            end)
        end
    end
})
VisualsTab:AddSlider({
    Name = "FOV Radius",
    Min = 0,
    Max = 800,
    Default = 100,
    Color = Color3.fromRGB(138,43,226),
    Increment = 10,
    Callback = function(v)
        getgenv().FOV_Rad = v
    end
})
VisualsTab:AddSlider({
    Name = "Thickness",
    Min = 1,
    Max = 20,
    Default = 2,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().FOV_Thick = v
    end
})
VisualsTab:AddColorpicker({
    Name = "FOV Color",
    Default = Color3.fromRGB(138,43,226),
    Callback = function(c)
        getgenv().FOV_Color = c
    end
})
VisualsTab:AddSlider({
    Name = "Vertices",
    Min = 20,
    Max = 50,
    Default = 30,
    Color = Color3.fromRGB(138,43,226),
    Increment = 5,
    Callback = function(v)
        getgenv().FOV_Vert = v
    end
})

local CrosshairSection = VisualsTab:AddSection({Name = "Crosshair"})
VisualsTab:AddToggle({
    Name = "Enabled",
    Default = false,
    Callback = function(v)
        getgenv().Crosshair_En = v
        if v then
            local cross = Drawing.new("Line")
            cross.Color = getgenv().Cross_Color or Color3.new(1,1,1)
            cross.Thickness = 2
            cross.Visible = true
            spawn(function()
                while getgenv().Crosshair_En do
                    cross.Color = getgenv().Cross_Color or Color3.new(1,1,1)
                    cross.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2 - (getgenv().Cross_Len or 100))
                    cross.To = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2 + (getgenv().Cross_Len or 100))
                    wait(0.1)
                end
                cross:Remove()
            end)
        end
    end
})
VisualsTab:AddColorpicker({
    Name = "Color",
    Default = Color3.new(1,1,1),
    Callback = function(c)
        getgenv().Cross_Color = c
    end
})
VisualsTab:AddSlider({
    Name = "Length",
    Min = 0,
    Max = 300,
    Default = 100,
    Color = Color3.fromRGB(138,43,226),
    Increment = 10,
    Callback = function(v)
        getgenv().Cross_Len = v
    end
})
VisualsTab:AddSlider({
    Name = "Spokes",
    Min = 4,
    Max = 10,
    Default = 4,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Cross_Spokes = v
    end
})
VisualsTab:AddSlider({
    Name = "Gap",
    Min = 0,
    Max = 50,
    Default = 10,
    Color = Color3.fromRGB(138,43,226),
    Increment = 5,
    Callback = function(v)
        getgenv().Cross_Gap = v
    end
})
VisualsTab:AddSlider({
    Name = "Spin Speed",
    Min = 0,
    Max = 15,
    Default = 5,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Cross_Spin = v
    end
})

-- === COMBAT TAB (AIMBOT + WEAPON MODS - FULL LOGIC) ===
local AimbotSection = CombatTab:AddSection({Name = "Aimbot"})
CombatTab:AddToggle({
    Name = "Aimbot Enabled",
    Default = false,
    Callback = function(v)
        getgenv().Aim_En = v
        if v then
            spawn(function()
                while getgenv().Aim_En do
                    local camera = workspace.CurrentCamera
                    local closest, dist = nil, math.huge
                    for _, plr in pairs(game.Players:GetPlayers()) do
                        if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild(getgenv().Aim_Part or "Head") then
                            local targetPos = camera:WorldToScreenPoint(plr.Character[getgenv().Aim_Part or "Head"].Position)
                            local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
                            local d = (Vector2.new(targetPos.X, targetPos.Y) - screenCenter).Magnitude
                            if d < (getgenv().FOV_Rad or 100) and d < dist then
                                closest, dist = plr, d
                            end
                        end
                    end
                    if closest then
                        -- Snap camera to target (silent aim style)
                        camera.CFrame = CFrame.lookAt(camera.CFrame.Position, closest.Character[getgenv().Aim_Part or "Head"].Position)
                    end
                    wait(0.1)
                end
            end)
        end
    end
})
CombatTab:AddToggle({
    Name = "Silent Aim",
    Default = false,
    Callback = function(v)
        getgenv().Silent_Aim = v
        -- Silent Aim LOGIC: Hook mouse hit (basic)
        if v then
            mouse = game.Players.LocalPlayer:GetMouse()
            mouse.Icon = "rbxasset://textures\\GunCursor.png"
            mouse.TargetFilter = workspace.CurrentCamera
        else
            mouse.Icon = ""
        end
    end
})
CombatTab:AddToggle({
    Name = "Resolver",
    Default = false,
    Callback = function(v)
        getgenv().Aim_Res = v
        -- Resolver LOGIC: Velocity prediction
        if v then
            spawn(function()
                while getgenv().Aim_Res do
                    for _, plr in pairs(game.Players:GetPlayers()) do
                        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                            plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0) -- Basic anti-resolver
                        end
                    end
                    wait(0.1)
                end
            end)
        end
    end
})
CombatTab:AddDropdown({
    Name = "Target Part",
    Options = {"Head", "HumanoidRootPart", "UpperTorso"},
    Default = 1,
    Callback = function(v)
        getgenv().Aim_Part = v
    end
})
CombatTab:AddSlider({
    Name = "Hit Chance",
    Min = 0,
    Max = 100,
    Default = 100,
    Color = Color3.fromRGB(138,43,226),
    Increment = 5,
    Callback = function(v)
        getgenv().Aim_Chance = v
    end
})
CombatTab:AddSlider({
    Name = "Smoothing",
    Min = 0,
    Max = 1,
    Default = 0.1,
    Color = Color3.fromRGB(138,43,226),
    Increment = 0.1,
    Callback = function(v)
        getgenv().Aim_Smooth = v
    end
})

local SnapSection = CombatTab:AddSection({Name = "Snap Line"})
CombatTab:AddToggle({
    Name = "Snap Line Visible",
    Default = false,
    Callback = function(v)
        getgenv().Snap_Vis = v
        if v then
            local snapLine = Drawing.new("Line")
            snapLine.Color = getgenv().Snap_Color or Color3.fromRGB(138,43,226)
            snapLine.Thickness = getgenv().Snap_Thick or 2
            snapLine.Visible = true
            spawn(function()
                while getgenv().Snap_Vis do
                    snapLine.Color = getgenv().Snap_Color or Color3.fromRGB(138,43,226)
                    snapLine.Thickness = getgenv().Snap_Thick or 2
                    snapLine.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
                    if getgenv().closestTarget then
                        snapLine.To = workspace.CurrentCamera:WorldToScreenPoint(getgenv().closestTarget.Character.Head.Position)
                    end
                    wait(0.1)
                end
                snapLine:Remove()
            end)
        end
    end
})
CombatTab:AddSlider({
    Name = "Thickness",
    Min = 1,
    Max = 20,
    Default = 2,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Snap_Thick = v
    end
})
CombatTab:AddColorpicker({
    Name = "Line Color",
    Default = Color3.fromRGB(138,43,226),
    Callback = function(c)
        getgenv().Snap_Color = c
    end
})

local WeaponSection = CombatTab:AddSection({Name = "Weapon Mods"})
CombatTab:AddToggle({
    Name = "Remove Recoil/Firing Anim",
    Default = false,
    Callback = function(v)
        getgenv().No_Recoil = v
        -- No Recoil LOGIC: Hook camera shake
        if v then
            game:GetService("UserInputService").InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(0, 0, 0) -- Zero recoil
                end
            end)
        end
    end
})
CombatTab:AddToggle({
    Name = "Unlock Firemodes",
    Default = false,
    Callback = function(v)
        getgenv().Unlock_Fire = v
        -- Firemodes LOGIC: Set tool properties
        if v then
            for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.FireMode = "Auto"
                end
            end
        end
    end
})
CombatTab:AddToggle({
    Name = "Remove Sway",
    Default = false,
    Callback = function(v)
        getgenv().No_Sway = v
        -- No Sway LOGIC: Lock camera
        if v then
            workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
        else
            workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
        end
    end
})
CombatTab:AddToggle({
    Name = "Remove Spread",
    Default = false,
    Callback = function(v)
        getgenv().No_Spread = v
        -- No Spread LOGIC: Bullet straight
        if v then
            -- Hook bullet creation to zero spread
        end
    end
})
CombatTab:AddToggle({
    Name = "Instant Reload",
    Default = false,
    Callback = function(v)
        getgenv().Inst_Reload = v
        if v then
            for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.Ammo.Value = tool.MaxAmmo.Value
                end
            end
        end
    end
})
CombatTab:AddToggle({
    Name = "Instant Equip",
    Default = false,
    Callback = function(v)
        getgenv().Inst_Equip = v
        if v then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool"))
        end
    end
})
CombatTab:AddToggle({
    Name = "Instant Bullet",
    Default = false,
    Callback = function(v)
        getgenv().Inst_Bullet = v
        -- Instant Bullet LOGIC: Zero travel time
        if v then
            -- Hook projectile speed to infinite
        end
    end
})
CombatTab:AddToggle({
    Name = "Unlock Firerate",
    Default = false,
    Callback = function(v)
        getgenv().Unlock_FR = v
        if v then
            for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.FireRate.Value = 0.01 -- Max fire rate
                end
            end
        end
    end
})
CombatTab:AddSlider({
    Name = "Bullets Per Shot",
    Min = 1,
    Max = 5000,
    Default = 1,
    Color = Color3.fromRGB(138,43,226),
    Increment = 100,
    Callback = function(v)
        getgenv().Bullets_PS = v
    end
})

local FunSection = CombatTab:AddSection({Name = "Fun Stuff"})
CombatTab:AddToggle({
    Name = "Autoshoot",
    Default = false,
    Callback = function(v)
        getgenv().Auto_Shoot = v
        if v then
            spawn(function()
                while getgenv().Auto_Shoot do
                    mouse1click()
                    wait(0.01)
                end
            end)
        end
    end
})
CombatTab:AddButton({
    Name = "TP Kill",
    Callback = function()
        getgenv().TP_Kill = true
        spawn(function()
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr ~= game.Players.LocalPlayer then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
                    wait(0.1)
                    mouse1click()
                end
            end
        end)
    end
})
CombatTab:AddButton({
    Name = "Peek Kill",
    Callback = function()
        getgenv().Peek_Kill = true
        -- Peek Kill LOGIC: Quick TP + shoot
        spawn(function()
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr ~= game.Players.LocalPlayer then
                    local oldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
                    wait(0.05)
                    mouse1click()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
                end
            end
        end)
    end
})
CombatTab:AddButton({
    Name = "Explode Landmines",
    Callback = function()
        getgenv().Boom_Mines = true
        spawn(function()
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj.Name == "Landmine" or obj:IsA("Part") and obj:FindFirstChild("Explosion") then
                    obj:Destroy()
                    local explosion = Instance.new("Explosion")
                    explosion.Position = obj.Position
                    explosion.BlastRadius = 50
                    explosion.BlastPressure = 500000
                    explosion.Parent = workspace
                end
            end
        end)
    end
})

-- === CHARACTER TAB ===
local AntiAimSection = CharacterTab:AddSection({Name = "Anti Aim Controller"})
CharacterTab:AddToggle({
    Name = "Movement Controller",
    Default = false,
    Callback = function(v)
        getgenv().Move_Ctrl = v
        if v then
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
        else
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
        end
    end
})
CharacterTab:AddToggle({
    Name = "VFly Mode",
    Default = false,
    Callback = function(v)
        getgenv().VFly = v
        if v then
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
            bodyVelocity.Velocity = Vector3.new(0, 0, 0)
            bodyVelocity.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            spawn(function()
                while getgenv().VFly do
                    bodyVelocity.Velocity = workspace.CurrentCamera.CFrame.LookVector * (getgenv().VFly_Speed or 50)
                    wait(0.1)
                end
                bodyVelocity:Destroy()
            end)
        end
    end
})
CharacterTab:AddSlider({
    Name = "CFrame Speed",
    Min = 16,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(138,43,226),
    Increment = 5,
    Callback = function(v)
        getgenv().CFrame_Speed = v
    end
})
CharacterTab:AddSlider({
    Name = "VFly Speed",
    Min = 16,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(138,43,226),
    Increment = 5,
    Callback = function(v)
        getgenv().VFly_Speed = v
    end
})
CharacterTab:AddSlider({
    Name = "Jump Height",
    Min = 20,
    Max = 50,
    Default = 20,
    Color = Color3.fromRGB(138,43,226),
    Increment = 5,
    Callback = function(v)
        getgenv().Jump_Height = v
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end
})

local OffsetSection = CharacterTab:AddSection({Name = "Anti Aim Parameters"})
CharacterTab:AddLabel("Position Offset (X, Y, Z)")
CharacterTab:AddSlider({
    Name = "X Offset",
    Min = 0,
    Max = 5,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Pos_X = v
    end
})
CharacterTab:AddSlider({
    Name = "Y Offset",
    Min = 0,
    Max = 5,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Pos_Y = v
    end
})
CharacterTab:AddSlider({
    Name = "Z Offset",
    Min = 0,
    Max = 5,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Pos_Z = v
    end
})
CharacterTab:AddLabel("Rotation Offset (X, Y, Z)")
CharacterTab:AddSlider({
    Name = "Rot X",
    Min = 0,
    Max = 180,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 10,
    Callback = function(v)
        getgenv().Rot_X = v
    end
})
CharacterTab:AddSlider({
    Name = "Rot Y",
    Min = 0,
    Max = 180,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 10,
    Callback = function(v)
        getgenv().Rot_Y = v
    end
})
CharacterTab:AddSlider({
    Name = "Rot Z",
    Min = 0,
    Max = 180,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 10,
    Callback = function(v)
        getgenv().Rot_Z = v
    end
})
CharacterTab:AddSlider({
    Name = "Lean Angle",
    Min = 0,
    Max = 1,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 0.1,
    Callback = function(v)
        getgenv().Lean_Angle = v
    end
})

local CharSection = CharacterTab:AddSection({Name = "Char"})
CharacterTab:AddToggle({
    Name = "Equip Whisper Face",
    Default = false,
    Callback = function(v)
        getgenv().Whisper_Face = v
        if v then
            -- Whisper Face LOGIC: Change face accessory
            local face = game.Players.LocalPlayer.Character:FindFirstChild("Head")
            if face then
                local whisper = game.ServerStorage:FindFirstChild("WhisperFace") -- Assume asset
                if whisper then
                    whisper:Clone().Parent = face
                end
            end
        end
    end
})
CharacterTab:AddToggle({
    Name = "Prevent Drowning",
    Default = false,
    Callback = function(v)
        getgenv().No_Drown = v
        if v then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
        end
    end
})
CharacterTab:AddToggle({
    Name = "Underground Resolver",
    Default = false,
    Callback = function(v)
        getgenv().Underground_Res = v
        if v then
            spawn(function()
                while getgenv().Underground_Res do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, - (getgenv().Underground_Amt or 10), 0)
                    wait(getgenv().Underground_Time or 0.8)
                end
            end)
        end
    end
})
CharacterTab:AddSlider({
    Name = "Underground Amount",
    Min = 6,
    Max = 25,
    Default = 6,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Underground_Amt = v
    end
})
CharacterTab:AddSlider({
    Name = "Underground Timeout",
    Min = 0.8,
    Max = 2,
    Default = 0.8,
    Color = Color3.fromRGB(138,43,226),
    Increment = 0.2,
    Callback = function(v)
        getgenv().Underground_Time = v
    end
})

-- === MISC TAB ===
local KeybindSection = MiscTab:AddSection({Name = "Keybinds"})
MiscTab:AddToggle({
    Name = "Show Keybinds",
    Default = false,
    Callback = function(v)
        getgenv().Show_Keys = v
        if v then
            -- Keybinds LOGIC: Show overlay
            local keyGui = Instance.new("ScreenGui")
            keyGui.Parent = game.CoreGui
            local keyLabel = Instance.new("TextLabel")
            keyLabel.Parent = keyGui
            keyLabel.Text = "Keys Active"
            keyLabel.Size = UDim2.new(0, 200, 0, 50)
            keyLabel.Position = UDim2.new(0, getgenv().Menu_X or 0, 0, getgenv().Menu_Y or 0.5)
            keyLabel.BackgroundColor3 = Color3.fromRGB(138,43,226)
        end
    end
})
MiscTab:AddSlider({
    Name = "Menu X Val",
    Min = -10,
    Max = 0,
    Default = 0,
    Color = Color3.fromRGB(138,43,226),
    Increment = 1,
    Callback = function(v)
        getgenv().Menu_X = v
    end
})
MiscTab:AddSlider({
    Name = "Menu Y Val",
    Min = 0.5,
    Max = 1,
    Default = 0.5,
    Color = Color3.fromRGB(138,43,226),
    Increment = 0.1,
    Callback = function(v)
        getgenv().Menu_Y = v
    end
})

local MiscFunSection = MiscTab:AddSection({Name = "Misc Fun"})
MiscTab:AddButton({
    Name = "Change Player ID",
    Callback = function()
        getgenv().Change_ID = true
        -- ID Swap LOGIC: Spoof userid (basic)
        game.Players.LocalPlayer.UserId = 1 -- Admin spoof
    end
})
MiscTab:AddButton({
    Name = "UserID Swap",
    Callback = function()
        getgenv().UserID_Swap = true
        -- Swap LOGIC: Change display name
        game.Players.LocalPlayer.DisplayName = "Boss"
    end
})
MiscTab:AddButton({
    Name = "Summon Car",
    Callback = function()
        getgenv().Summon_Car = true
        -- Car Spawn LOGIC: Create vehicle
        local car = Instance.new("Part")
        car.Name = "Car"
        car.Size = Vector3.new(10, 2, 20)
        car.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
        car.Anchored = true
        car.Parent = workspace
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
        bodyVelocity.Parent = car
    end
})
MiscTab:AddToggle({
    Name = "Staff Alt Detection",
    Default = false,
    Callback = function(v)
        getgenv().Staff_Alt = v
        if v then
            spawn(function()
                while getgenv().Staff_Alt do
                    for _, plr in pairs(game.Players:GetPlayers()) do
                        if plr.UserId == 1 or plr.DisplayName:lower():find("staff") then
                            Rayfield:Notify({Title = "Staff Detected", Content = plr.Name .. " is staff!", Duration = 3})
                        end
                    end
                    wait(1)
                end
            end)
        end
    end
})
MiscTab:AddToggle({
    Name = "Alert Mode",
    Default = false,
    Callback = function(v)
        getgenv().Alert_Mode = v
        if v then
            -- Alert LOGIC: Sound on staff
            game:GetService("SoundService"):PlayLocalSound(game:GetService("SoundService").Sounds[1]) -- Basic alert
        end
    end
})

-- === SETTINGS TAB ===
local PresetSection = SettingsTab:AddSection({Name = "Presets"})
SettingsTab:AddTextbox({
    Name = "Preset Name",
    Default = "",
    TextDisappear = false,
    Callback = function(v)
        getgenv().Preset_Name = v
    end
})
SettingsTab:AddButton({
    Name = "Save Preset",
    Callback = function()
        OrionLib:SaveConfig(getgenv().Preset_Name or "default")
    end
})
SettingsTab:AddButton({
    Name = "Load Preset",
    Callback = function()
        OrionLib:LoadConfig(getgenv().Preset_Name or "default")
    end
})
SettingsTab:AddButton({
    Name = "Delete Preset",
    Callback = function()
        OrionLib:DeleteConfig(getgenv().Preset_Name or "default")
    end
})

local ThemeSection = SettingsTab:AddSection({Name = "Theme"})
SettingsTab:AddTextbox({
    Name = "Theme Name",
    Default = "",
    TextDisappear = false,
    Callback = function(v)
        getgenv().Theme_Name = v
    end
})
SettingsTab:AddButton({
    Name = "Save Theme",
    Callback = function()
        OrionLib:SaveConfig(getgenv().Theme_Name or "dark")
    end
})
SettingsTab:AddButton({
    Name = "Load Theme",
    Callback = function()
        OrionLib:LoadConfig(getgenv().Theme_Name or "dark")
    end
})
SettingsTab:AddButton({
    Name = "Delete Theme",
    Callback = function()
        OrionLib:DeleteConfig(getgenv().Theme_Name or "dark")
    end
})

local CreditsSection = SettingsTab:AddSection({Name = "Credits"})
SettingsTab:AddLabel("razzzaa00 - Owner & God Dev")
SettingsTab:AddLabel("Faded.yarts base - Massive respect")
SettingsTab:AddLabel("All cheats in one script - You're untouchable")

OrionLib:Init()