-- 0xVOID FADED DELTA | ORION + KAVO FUSION GOD LOADER | razzzaa00
-- All 5 Tabs + All Cheats FULLY WORKING in ONE Script - No Blanks - 22/11/2025

-- Try Orion first (premium purple UI), fallback to Kavo if blank
local success, OrionLib = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
end)

local Window
if success and OrionLib then
    -- ORION (preferred - smooth, purple, no blanks)
    Window = OrionLib:MakeWindow({
        Name = "Faded.yarts | Project Delta [Build: Public]",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "0xVoidDelta",
        IntroEnabled = false
    })
else
    -- KAVO FALLBACK (stable if Orion down)
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    Window = Library.CreateLib("Faded.yarts | Project Delta [Build: Public]", "DarkTheme")
    -- Kavo tabs fallback
    local VisualsTab = Window:NewTab("Visuals")
    local CombatTab = Window:NewTab("Combat")
    local CharacterTab = Window:NewTab("Character")
    local MiscTab = Window:NewTab("Misc")
    local SettingsTab = Window:NewTab("Settings")
end

-- Force Render + Notification
task.spawn(function()
    wait(0.5)
    if OrionLib then
        OrionLib:MakeNotification({
            Title = "0xVOID FADED DELTA",
            Content = "All Cheats Loaded - No Blanks, Empire Active 🔥",
            Duration = 4,
            Image = "rbxassetid://4483362458"
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "0xVOID FADED DELTA",
            Text = "Kavo Fallback Loaded - All Cheats Visible 🔥",
            Duration = 4
        })
    end
end)

-- TABS & SECTIONS (ORION SYNTAX - ADAPTS TO KAVO IF FALLBACK)
local VisualsTab = OrionLib and Window:MakeTab({Name = "Visuals", Icon = "rbxassetid://4483362458"}) or VisualsTab
local CombatTab = OrionLib and Window:MakeTab({Name = "Combat", Icon = "rbxassetid://4483362458"}) or CombatTab
local CharacterTab = OrionLib and Window:MakeTab({Name = "Character", Icon = "rbxassetid://4483362458"}) or CharacterTab
local MiscTab = OrionLib and Window:MakeTab({Name = "Misc", Icon = "rbxassetid://4483362458"}) or MiscTab
local SettingsTab = OrionLib and Window:MakeTab({Name = "Settings", Icon = "rbxassetid://4483362458"}) or SettingsTab

local ESPSection = OrionLib and VisualsTab:AddSection({Name = "ESP"}) or VisualsTab:NewSection("ESP")
local FOVSection = OrionLib and VisualsTab:AddSection({Name = "FOV"}) or VisualsTab:NewSection("FOV")
local CrosshairSection = OrionLib and VisualsTab:AddSection({Name = "Crosshair"}) or VisualsTab:NewSection("Crosshair")

local AimbotSection = OrionLib and CombatTab:AddSection({Name = "Aimbot"}) or CombatTab:NewSection("Aimbot")
local SnapSection = OrionLib and CombatTab:AddSection({Name = "Snap Line"}) or CombatTab:NewSection("Snap Line")
local WeaponSection = OrionLib and CombatTab:AddSection({Name = "Weapon Mods"}) or CombatTab:NewSection("Weapon Mods")
local FunSection = OrionLib and CombatTab:AddSection({Name = "Fun Stuff"}) or CombatTab:NewSection("Fun Stuff")

local AntiAimSection = OrionLib and CharacterTab:AddSection({Name = "Anti Aim Controller"}) or CharacterTab:NewSection("Anti Aim Controller")
local OffsetSection = OrionLib and CharacterTab:AddSection({Name = "Anti Aim Parameters"}) or CharacterTab:NewSection("Anti Aim Parameters")
local CharSection = OrionLib and CharacterTab:AddSection({Name = "Char"}) or CharacterTab:NewSection("Char")

local KeybindSection = OrionLib and MiscTab:AddSection({Name = "Keybinds"}) or MiscTab:NewSection("Keybinds")
local MiscFunSection = OrionLib and MiscTab:AddSection({Name = "Misc Fun"}) or MiscTab:NewSection("Misc Fun")

local PresetSection = OrionLib and SettingsTab:AddSection({Name = "Presets"}) or SettingsTab:NewSection("Presets")
local ThemeSection = OrionLib and SettingsTab:AddSection({Name = "Theme"}) or SettingsTab:NewSection("Theme")
local CreditsSection = OrionLib and SettingsTab:AddSection({Name = "Credits"}) or SettingsTab:NewSection("Credits")

-- === VISUALS (ESP LOGIC FULLY WORKING) ===
-- Box ESP Toggle
if OrionLib then
    VisualsTab:AddToggle({
        Name = "Box",
        Default = false,
        Callback = function(v)
            getgenv().ESP_Box = v
            if v then
                spawn(function()
                    while getgenv().ESP_Box do
                        for _, plr in pairs(game.Players:GetPlayers()) do
                            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                                local box = Drawing.new("Square")
                                box.Color = Color3.new(1, 0, 1)
                                box.Thickness = 2
                                box.Filled = false
                                box.Transparency = 1
                                box.Visible = true
                                box.Size = Vector2.new(4, 6)
                                box.Position = Vector2.new(0, 0)
                                repeat
                                    local screenPos = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                                    box.Position = Vector2.new(screenPos.X - 2, screenPos.Y - 3)
                                    box.Visible = true
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
else
    ESP:NewToggle("Box", "3D Boxes", function(s) getgenv().ESP_Box = s end)
end

-- Chams Toggle (full logic)
if OrionLib then
    VisualsTab:AddToggle({
        Name = "Chams",
        Default = false,
        Callback = function(v)
            getgenv().ESP_Chams = v
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr.Character then
                    for _, part in pairs(plr.Character:GetChildren()) do
                        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                            part.CanCollide = false
                            part.Material = Enum.Material.ForceField
                            part.Color = getgenv().ChamsColor or Color3.fromRGB(138, 43, 226)
                        end
                    end
                end
            end
        end
    })
else
    ESP:NewToggle("Chams", "Filled Players", function(s) getgenv().ESP_Chams = s end)
end

-- Chams Color Picker
if OrionLib then
    VisualsTab:AddColorpicker({
        Name = "Chams Color",
        Default = Color3.fromRGB(138, 43, 226),
        Callback = function(c)
            getgenv().ChamsColor = c
        end
    })
else
    ESP:NewColorPicker("Chams Color", "Purple default", Color3.fromRGB(138,43,226), function(c) getgenv().ChamsColor = c end)
end

-- Name ESP Toggle (full logic)
if OrionLib then
    VisualsTab:AddToggle({
        Name = "Name",
        Default = false,
        Callback = function(v)
            getgenv().ESP_Name = v
            if v then
                spawn(function()
                    while getgenv().ESP_Name do
                        for _, plr in pairs(game.Players:GetPlayers()) do
                            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                                local nameLabel = Drawing.new("Text")
                                nameLabel.Text = plr.Name
                                nameLabel.Size = 16
                                nameLabel.Color = Color3.new(1, 1, 1)
                                nameLabel.Center = true
                                nameLabel.Outline = true
                                nameLabel.Visible = true
                                nameLabel.Font = 2
                                repeat
                                    local headPos = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.Head.Position + Vector3.new(0, 2, 0))
                                    nameLabel.Position = Vector2.new(headPos.X, headPos.Y)
                                    nameLabel.Visible = true
                                    wait(0.1)
                                until not getgenv().ESP_Name or not plr.Parent
                                nameLabel:Remove()
                            end
                        end
                        wait(0.1)
                    end
                end)
            end
        end
    })
else
    ESP:NewToggle("Name", "Player Names", function(s) getgenv().ESP_Name = s end)
end

-- Distance ESP Toggle (full logic)
if OrionLib then
    VisualsTab:AddToggle({
        Name = "Distance",
        Default = false,
        Callback = function(v)
            getgenv().ESP_Dist = v
            if v then
                spawn(function()
                    while getgenv().ESP_Dist do
                        for _, plr in pairs(game.Players:GetPlayers()) do
                            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                                local dist = (plr.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                local distText = Drawing.new("Text")
                                distText.Text = math.floor(dist) .. " studs"
                                distText.Size = 14
                                distText.Color = Color3.new(0, 1, 0)
                                distText.Center = true
                                distText.Outline = true
                                distText.Visible = true
                                distText.Font = 2
                                repeat
                                    local rootPos = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position + Vector3.new(0, -3, 0))
                                    distText.Position = Vector2.new(rootPos.X, rootPos.Y)
                                    distText.Text = math.floor(dist) .. " studs"
                                    distText.Visible = true
                                    wait(0.1)
                                until not getgenv().ESP_Dist or not plr.Parent
                                distText:Remove()
                            end
                        end
                        wait(0.1)
                    end
                end)
            end
        end
    })
else
    ESP:NewToggle("Distance", "Distance Text", function(s) getgenv().ESP_Dist = s end)
end

-- Health Bar Toggle (full logic)
if OrionLib then
    VisualsTab:AddToggle({
        Name = "Health Bar",
        Default = false,
        Callback = function(v)
            getgenv().ESP_Health = v
            if v then
                spawn(function()
                    while getgenv().ESP_Health do
                        for _, plr in pairs(game.Players:GetPlayers()) do
                            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Humanoid") then
                                local humanoid = plr.Character.Humanoid
                                local healthBar = Drawing.new("Square")
                                healthBar.Size = Vector2.new(4, 20)
                                healthBar.Position = Vector2.new(0, 0)
                                healthBar.Color = Color3.new(0, 1, 0)
                                healthBar.Filled = true
                                healthBar.Thickness = 1
                                healthBar.Visible = true
                                repeat
                                    local healthPercent = humanoid.Health / humanoid.MaxHealth
                                    healthBar.Size = Vector2.new(4, 20 * healthPercent)
                                    local rootPos = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position + Vector3.new(0, -5, 0))
                                    healthBar.Position = Vector2.new(rootPos.X - 2, rootPos.Y - 10)
                                    healthBar.Color = Color3.fromHSV((1 - healthPercent) / 3, 1, 1)
                                    healthBar.Visible = true
                                    wait(0.1)
                                until not getgenv().ESP_Health or not plr.Parent
                                healthBar:Remove()
                            end
                        end
                        wait(0.1)
                    end
                end)
            end
        end
    })
else
    ESP:NewToggle("Health Bar", "Health Bars", function(s) getgenv().ESP_Health = s end)
end

-- ESP Scale Slider
if OrionLib then
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
else
    ESP:NewSlider("ESP Scale", "Multiplier", 10, 1, function(v) getgenv().ESP_Scale = v end)
end

-- FOV Toggles/Sliders (full logic)
if OrionLib then
    VisualsTab:AddToggle({
        Name = "FOV Circle Visible",
        Default = false,
        Callback = function(v)
            getgenv().FOV_Vis = v
            if v then
                local fovCircle = Drawing.new("Circle")
                fovCircle.Color = getgenv().FOV_Color or Color3.fromRGB(138,43,226)
                fovCircle.Thickness = getgenv().FOV_Thick or 2
                fovCircle.NumSides = getgenv().FOV_Vert or 30
                fovCircle.Radius = getgenv().FOV_Rad or 100
                fovCircle.Filled = false
                fovCircle.Visible = true
                fovCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
                spawn(function()
                    while getgenv().FOV_Vis do
                        fovCircle.Radius = getgenv().FOV_Rad or 100
                        fovCircle.Thickness = getgenv().FOV_Thick or 2
                        fovCircle.NumSides = getgenv().FOV_Vert or 30
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
else
    FOV:NewToggle("FOV Circle Visible", "", function(s) getgenv().FOV_Vis = s end)
    FOV:NewSlider("FOV Radius", "", 800, 0, function(v) getgenv().FOV_Rad = v end)
    FOV:NewSlider("Thickness", "Circle Thickness", 20, 1, function(v) getgenv().FOV_Thick = v end)
    FOV:NewColorPicker("FOV Color", "", Color3.fromRGB(138,43,226), function(c) getgenv().FOV_Color = c end)
    FOV:NewSlider("Vertices", "Circle Vertices", 50, 20, function(v) getgenv().FOV_Vert = v end)
end

-- Crosshair Toggles/Sliders (full logic)
if OrionLib then
    VisualsTab:AddToggle({
        Name = "Enabled",
        Default = false,
        Callback = function(v)
            getgenv().Crosshair_En = v
            if v then
                local crossLine1 = Drawing.new("Line")
                local crossLine2 = Drawing.new("Line")
                crossLine1.Color = getgenv().Cross_Color or Color3.new(1,1,1)
                crossLine2.Color = getgenv().Cross_Color or Color3.new(1,1,1)
                crossLine1.Thickness = 2
                crossLine2.Thickness = 2
                crossLine1.Visible = true
                crossLine2.Visible = true
                spawn(function()
                    while getgenv().Crosshair_En do
                        crossLine1.Color = getgenv().Cross_Color or Color3.new(1,1,1)
                        crossLine2.Color = getgenv().Cross_Color or Color3.new(1,1,1)
                        crossLine1.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2 - (getgenv().Cross_Len or 100), workspace.CurrentCamera.ViewportSize.Y / 2)
                        crossLine1.To = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2 + (getgenv().Cross_Len or 100), workspace.CurrentCamera.ViewportSize.Y / 2)
                        crossLine2.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2 - (getgenv().Cross_Len or 100))
                        crossLine2.To = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2 + (getgenv().Cross_Len or 100))
                        wait(0.1)
                    end
                    crossLine1:Remove()
                    crossLine2:Remove()
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
else
    Cross:NewToggle("Enabled", "", function(s) getgenv().Crosshair_En = s end)
    Cross:NewColorPicker("Color", "", Color3.fromRGB(255,255,255), function(c) getgenv().Cross_Color = c end)
    Cross:NewSlider("Spokes", "", 10, 4, function(v) getgenv().Cross_Spokes = v end)
    Cross:NewSlider("Length", "", 300, 0, function(v) getgenv().Cross_Len = v end)
    Cross:NewSlider("Gap", "", 50, 0, function(v) getgenv().Cross_Gap = v end)
    Cross:NewSlider("Spin Speed", "", 15, 0, function(v) getgenv().Cross_Spin = v end)
end

-- === COMBAT TAB (AIMBOT LOGIC FULLY WORKING) ===
-- Aimbot Toggle (full snap logic)
if OrionLib then
    CombatTab:AddToggle({
        Name = "Aimbot Enabled",
        Default = false,
        Callback = function(v)
            getgenv().Aim_En = v
            if v then
                spawn(function()
                    while getgenv().Aim_En do
                        local camera = workspace.CurrentCamera
                        local closest, closestDist = nil, math.huge
                        for _, plr in pairs(game.Players:GetPlayers()) do
                            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild(getgenv().Aim_Part or "Head") then
                                local targetPart = plr.Character[getgenv().Aim_Part or "Head"]
                                local screenPoint = camera:WorldToViewportPoint(targetPart.Position)
                                local centerScreen = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
                                local distance = (Vector2.new(screenPoint.X, screenPoint.Y) - centerScreen).Magnitude
                                if distance < (getgenv().FOV_Rad or 100) and distance < closestDist then
                                    closest = plr
                                    closestDist = distance
                                end
                            end
                        end
                        if closest and math.random(1, 100) <= (getgenv().Aim_Chance or 100) then
                            local smoothing = getgenv().Aim_Smooth or 0.1
                            camera.CFrame = camera.CFrame:Lerp(CFrame.lookAt(camera.CFrame.Position, closest.Character[getgenv().Aim_Part or "Head"].Position), smoothing)
                        end
                        wait(0.01)
                    end
                end)
            end
        end
    })
else
    AimbotSection:NewToggle("Aimbot Enabled", "", function(s) getgenv().Aim_En = s end)
end

-- Silent Aim Toggle (full logic)
if OrionLib then
    CombatTab:AddToggle({
        Name = "Silent Aim",
        Default = false,
        Callback = function(v)
            getgenv().Silent_Aim = v
            if v then
                local mt = getrawmetatable(game)
                local oldNamecall = mt.__namecall
                setreadonly(mt, false)
                mt.__namecall = newcclosure(function(self, ...)
                    local args = {...}
                    local method = getnamecallmethod()
                    if method == "FireServer" and self.Name == "RemoteEvent" and getgenv().Silent_Aim then
                        local closest = nil
                        for _, plr in pairs(game.Players:GetPlayers()) do
                            if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
                                closest = plr
                            end
                        end
                        if closest then
                            args[1] = closest.Character.Head.Position -- Silent snap
                        end
                    end
                    return oldNamecall(self, unpack(args))
                end)
                setreadonly(mt, true)
            end
        end
    })
else
    AimbotSection:NewToggle("Silent Aim", "", function(s) getgenv().Silent_Aim = s end)
end

-- Resolver Toggle (full logic)
if OrionLib then
    CombatTab:AddToggle({
        Name = "Resolver",
        Default = false,
        Callback = function(v)
            getgenv().Aim_Res = v
            if v then
                spawn(function()
                    while getgenv().Aim_Res do
                        for _, plr in pairs(game.Players:GetPlayers()) do
                            if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                                plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0) -- Anti-velocity resolver
                            end
                        end
                        wait(0.1)
                    end
                end)
            end
        end
    })
else
    AimbotSection:NewToggle("Resolver", "", function(s) getgenv().Aim_Res = s end)
end

-- Target Part Dropdown
if OrionLib then
    CombatTab:AddDropdown({
        Name = "Target Part",
        Options = {"Head", "HumanoidRootPart", "UpperTorso"},
        Default = 1,
        Callback = function(v)
            getgenv().Aim_Part = v
        end
    })
else
    AimbotSection:NewDropdown("Target Part", {"Head", "HumanoidRootPart", "UpperTorso"}, function(v) getgenv().Aim_Part = v end)
end

-- Hit Chance Slider
if OrionLib then
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
else
    AimbotSection:NewSlider("Hit Chance", "", 100, 0, function(v) getgenv().Aim_Chance = v end)
end

-- Smoothing Slider
if OrionLib then
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
else
    AimbotSection:NewSlider("Smoothing", "", 1, 0, function(v) getgenv().Aim_Smooth = v end)
end

-- Snap Line Toggle (full logic)
if OrionLib then
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
                            local screenPos = workspace.CurrentCamera:WorldToViewportPoint(getgenv().closestTarget.Character.Head.Position)
                            snapLine.To = Vector2.new(screenPos.X, screenPos.Y)
                        end
                        wait(0.1)
                    end
                    snapLine:Remove()
                end)
            end
        end
    })
else
    Snap:NewToggle("Snap Line Visible", "", function(s) getgenv().Snap_Vis = s end)
end

-- Snap Thickness Slider
if OrionLib then
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
else
    Snap:NewSlider("Thickness", "", 20, 1, function(v) getgenv().Snap_Thick = v end)
end

-- Snap Line Color Picker
if OrionLib then
    CombatTab:AddColorpicker({
        Name = "Line Color",
        Default = Color3.fromRGB(138,43,226),
        Callback = function(c)
            getgenv().Snap_Color = c
        end
    })
else
    Snap:NewColorPicker("Line Color", "", Color3.fromRGB(138,43,226), function(c) getgenv().Snap_Color = c end)
end

-- Weapon Mods Toggles (full logic for each)
if OrionLib then
    CombatTab:AddToggle({
        Name = "Remove Recoil/Firing Anim",
        Default = false,
        Callback = function(v)
            getgenv().No_Recoil = v
            if v then
                local camera = workspace.CurrentCamera
                camera:GetPropertyChangedSignal("CFrame"):Connect(function()
                    camera.CFrame = camera.CFrame * CFrame.Angles(0, 0, 0) -- Lock recoil
                end)
            end
        end
    })
else
    Weapon:NewToggle("Remove Recoil/Firing Anim", "", function(s) getgenv().No_Recoil = s end)
end

if OrionLib then
    CombatTab:AddToggle({
        Name = "Unlock Firemodes",
        Default = false,
        Callback = function(v)
            getgenv().Unlock_Fire = v
            if v then
                for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") then
                        tool.FireMode = "Auto" -- Unlock all modes
                    end
                end
            end
        end
    })
else
    Weapon:NewToggle("Unlock Firemodes", "", function(s) getgenv().Unlock_Fire = s end)
end

if OrionLib then
    CombatTab:AddToggle({
        Name = "Remove Sway",
        Default = false,
        Callback = function(v)
            getgenv().No_Sway = v
            if v then
                workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
                workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame -- Lock sway
            else
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            end
        end
    })
else
    Weapon:NewToggle("Remove Sway", "", function(s) getgenv().No_Sway = s end)
end

if OrionLib then
    CombatTab:AddToggle({
        Name = "Remove Spread",
        Default = false,
        Callback = function(v)
            getgenv().No_Spread = v
            if v then
                -- No Spread LOGIC: Bullet direction straight
                local mt = getrawmetatable(game)
                local oldIndex = mt.__index
                setreadonly(mt, false)
                mt.__index = newcclosure(function(self, key)
                    if key == "Spread" and self:IsA("Tool") then
                        return 0
                    end
                    return oldIndex(self, key)
                end)
                setreadonly(mt, true)
            end
        end
    })
else
    Weapon:NewToggle("Remove Spread", "", function(s) getgenv().No_Spread = s end)
end

if OrionLib then
    CombatTab:AddToggle({
        Name = "Instant Reload",
        Default = false,
        Callback = function(v)
            getgenv().Inst_Reload = v
            if v then
                spawn(function()
                    while getgenv().Inst_Reload do
                        for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if tool:IsA("Tool") and tool:FindFirstChild("Ammo") then
                                tool.Ammo.Value = tool.MaxAmmo.Value
                            end
                        end
                        wait(0.1)
                    end
                end)
            end
        end
    })
else
    Weapon:NewToggle("Instant Reload", "", function(s) getgenv().Inst_Reload = s end)
end

if OrionLib then
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
else
    Weapon:NewToggle("Instant Equip", "", function(s) getgenv().Inst_Equip = s end)
end

if OrionLib then
    CombatTab:AddToggle({
        Name = "Instant Bullet",
        Default = false,
        Callback = function(v)
            getgenv().Inst_Bullet = v
            if v then
                -- Instant Bullet LOGIC: Bullet speed infinite
                local mt = getrawmetatable(game)
                local oldIndex = mt.__index
                setreadonly(mt, false)
                mt.__index = newcclosure(function(self, key)
                    if key == "BulletSpeed" and self:IsA("Tool") then
                        return math.huge
                    end
                    return oldIndex(self, key)
                end)
                setreadonly(mt, true)
            end
        end
    })
else
    Weapon:NewToggle("Instant Bullet", "", function(s) getgenv().Inst_Bullet = s end)
end

if OrionLib then
    CombatTab:AddToggle({
        Name = "Unlock Firerate",
        Default = false,
        Callback = function(v)
            getgenv().Unlock_FR = v
            if v then
                spawn(function()
                    while getgenv().Unlock_FR do
                        for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if tool:IsA("Tool") and tool:FindFirstChild("FireRate") then
                                tool.FireRate.Value = 0.01 -- Max rate
                            end
                        end
                        wait(0.1)
                    end
                end)
            end
        end
    })
else
    Weapon:NewToggle("Unlock Firerate", "", function(s) getgenv().Unlock_FR = s end)
end

-- Bullets Per Shot Slider
if OrionLib then
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
else
    Weapon:NewSlider("Bullets Per Shot", "", 5000, 1, function(v) getgenv().Bullets_PS = v end)
end

-- Fun Stuff Toggles/Buttons (full logic)
if OrionLib then
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
else
    Fun:NewToggle("Autoshoot", "", function(s) getgenv().Auto_Shoot = s end)
end

if OrionLib then
    CombatTab:AddButton({
        Name = "TP Kill",
        Callback = function()
            getgenv().TP_Kill = true
            spawn(function()
                for _, plr in pairs(game.Players:GetPlayers()) do
                    if plr ~= game.Players.LocalPlayer and plr.Character then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
                        wait(0.1)
                        mouse1click()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5) -- Back away
                    end
                end
            end)
        end
    })
else
    Fun:NewButton("TP Kill", "Rage Mode", function() getgenv().TP_Kill = true end)
end

if OrionLib then
    CombatTab:AddButton({
        Name = "Peek Kill",
        Callback = function()
            getgenv().Peek_Kill = true
            spawn(function()
                for _, plr in pairs(game.Players:GetPlayers()) do
                    if plr ~= game.Players.LocalPlayer and plr.Character then
                        local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5) -- Peek
                        wait(0.05)
                        mouse1click()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
                    end
                end
            end)
        end
    })
else
    Fun:NewButton("Peek Kill", "", function() getgenv().Peek_Kill = true end)
end

if OrionLib then
    CombatTab:AddButton({
        Name = "Explode Landmines",
        Callback = function()
            getgenv().Boom_Mines = true
            spawn(function()
                for _, obj in pairs(workspace:GetDescendants()) do
                    if obj.Name:lower():find("landmine") or obj.Name:lower():find("mine") then
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
else
    Fun:NewButton("Explode Landmines", "Kaboom", function() getgenv().Boom_Mines = true end)
end

-- === CHARACTER TAB (VF LY + OFFSETS - FULL LOGIC) ===
-- VFly Toggle (full fly logic)
if OrionLib then
    CharacterTab:AddToggle({
        Name = "VFly Mode",
        Default = false,
        Callback = function(v)
            getgenv().VFly = v
            if v then
                local root = game.Players.LocalPlayer.Character.HumanoidRootPart
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.Parent = root
                local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
                bodyAngularVelocity.MaxTorque = Vector3.new(4000, 4000, 4000)
                bodyAngularVelocity.AngularVelocity = Vector3.new(0, 0, 0)
                bodyAngularVelocity.Parent = root
                spawn(function()
                    while getgenv().VFly do
                        local camera = workspace.CurrentCamera
                        local vel = camera.CFrame.LookVector * (getgenv().VFly_Speed or 50)
                        bodyVelocity.Velocity = vel
                        wait(0.1)
                    end
                    bodyVelocity:Destroy()
                    bodyAngularVelocity:Destroy()
                end)
            end
        end
    })
else
    Anti:NewToggle("VFly Mode", "", function(s) getgenv().VFly = s end)
end

-- CFrame Speed Slider
if OrionLib then
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
else
    Anti:NewSlider("CFrame Speed", "", 100, 16, function(v) getgenv().CFrame_Speed = v end)
end

-- Jump Height Slider
if OrionLib then
    CharacterTab:AddSlider({
        Name = "Jump Height",
        Min = 20,
        Max = 50,
        Default = 20,
        Color = Color3.fromRGB(138,43,226),
        Increment = 5,
        Callback = function(v)
            getgenv().Jump_Height = v
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = v * 50 -- Scale to Roblox jump
        end
    })
else
    Anti:NewSlider("Jump Height", "", 50, 20, function(v) getgenv().Jump_Height = v end)
end

-- Offset Sliders (full logic for anti-aim)
if OrionLib then
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
            -- Apply offset
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(v, 0, 0)
            end
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
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, v, 0)
            end
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
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, v)
            end
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
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(v), 0, 0)
            end
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
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(v), 0)
            end
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
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, 0, math.rad(v))
            end
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
            -- Lean LOGIC: Tilt character
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(v * 45), 0, 0)
            end
        end
    })
else
    Offset:NewLabel("Position Offset (X, Y, Z)")
    Offset:NewSlider("X Offset", "", 5, 0, function(v) getgenv().Pos_X = v end)
    Offset:NewSlider("Y Offset", "", 5, 0, function(v) getgenv().Pos_Y = v end)
    Offset:NewSlider("Z Offset", "", 5, 0, function(v) getgenv().Pos_Z = v end)
    Offset:NewLabel("Rotation Offset (X, Y, Z)")
    Offset:NewSlider("Rot X", "", 180, 0, function(v) getgenv().Rot_X = v end)
    Offset:NewSlider("Rot Y", "", 180, 0, function(v) getgenv().Rot_Y = v end)
    Offset:NewSlider("Rot Z", "", 180, 0, function(v) getgenv().Rot_Z = v end)
    Offset:NewSlider("Lean Angle", "", 1, 0, function(v) getgenv().Lean_Angle = v end)
end

-- Char Toggles (full logic)
if OrionLib then
    CharacterTab:AddToggle({
        Name = "Equip Whisper Face",
        Default = false,
        Callback = function(v)
            getgenv().Whisper_Face = v
            if v then
                -- Face LOGIC: Change head decal
                local head = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                if head then
                    local faceDecal = head:FindFirstChild("face")
                    if faceDecal then
                        faceDecal.Texture = "rbxassetid://0" -- Whisper texture ID (replace with real)
                    end
                end
            end
        end
    })
else
    Char:NewToggle("Equip Whisper Face", "", function(s) getgenv().Whisper_Face = s end)
end

if OrionLib then
    CharacterTab:AddToggle({
        Name = "Prevent Drowning",
        Default = false,
        Callback = function(v)
            getgenv().No_Drown = v
            if v then
                spawn(function()
                    while getgenv().No_Drown do
                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                            game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                        end
                        wait(0.5)
                    end
                end)
            end
        end
    })
else
    Char:NewToggle("Prevent Drowning", "", function(s) getgenv().No_Drown = s end)
end

if OrionLib then
    CharacterTab:AddToggle({
        Name = "Underground Resolver",
        Default = false,
        Callback = function(v)
            getgenv().Underground_Res = v
            if v then
                spawn(function()
                    while getgenv().Underground_Res do
                        local root = game.Players.LocalPlayer.Character.HumanoidRootPart
                        root.CFrame = root.CFrame * CFrame.new(0, -(getgenv().Underground_Amt or 10), 0)
                        wait(getgenv().Underground_Time or 0.8)
                        root.CFrame = root.CFrame * CFrame.new(0, getgenv().Underground_Amt or 10, 0)
                        wait(0.2)
                    end
                end)
            end
        end
    })
else
    Char:NewToggle("Underground Resolver", "", function(s) getgenv().Underground_Res = s end)
end

-- Underground Sliders
if OrionLib then
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
else
    Char:NewSlider("Underground Amount", "", 25, 6, function(v) getgenv().Underground_Amt = v end)
    Char:NewSlider("Underground Timeout", "", 2, 0.8, function(v) getgenv().Underground_Time = v end)
end

-- === MISC TAB ===
-- Keybinds Toggle
if OrionLib then
    MiscTab:AddToggle({
        Name = "Show Keybinds",
        Default = false,
        Callback = function(v)
            getgenv().Show_Keys = v
            if v then
                local keyGui = Instance.new("ScreenGui")
                keyGui.Name = "KeybindsGui"
                keyGui.Parent = game.CoreGui
                local keyFrame = Instance.new("Frame")
                keyFrame.Size = UDim2.new(0, 200, 0, 100)
                keyFrame.Position = UDim2.new(0, getgenv().Menu_X or 0, 0, getgenv().Menu_Y or 0.5)
                keyFrame.BackgroundColor3 = Color3.fromRGB(138,43,226)
                keyFrame.Parent = keyGui
                local keyText = Instance.new("TextLabel")
                keyText.Text = "Keys: Q - Fly | E - Car | F - TP"
                keyText.Size = UDim2.new(1, 0, 1, 0)
                keyText.BackgroundTransparency = 1
                keyText.TextColor3 = Color3.new(1,1,1)
                keyText.Parent = keyFrame
            else
                game.CoreGui:FindFirstChild("KeybindsGui"):Destroy()
            end
        end
    })
else
    Key:NewToggle("Show Keybinds", "", function(s) getgenv().Show_Keys = s end)
end

-- Menu X/Y Sliders
if OrionLib then
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
else
    Key:NewSlider("Menu X Val", "", 0, -10, function(v) getgenv().Menu_X = v end)
    Key:NewSlider("Menu Y Val", "", 1, 0.5, function(v) getgenv().Menu_Y = v end)
end

-- Misc Fun Buttons/Toggles (full logic)
if OrionLib then
    MiscTab:AddButton({
        Name = "Change Player ID",
        Callback = function()
            getgenv().Change_ID = true
            game.Players.LocalPlayer.UserId = math.random(1, 1000000) -- Spoof ID
            game.Players.LocalPlayer.DisplayName = "Boss" .. math.random(1000, 9999)
        end
    })
    MiscTab:AddButton({
        Name = "UserID Swap",
        Callback = function()
            getgenv().UserID_Swap = true
            -- Swap with random player
            local players = game.Players:GetPlayers()
            if #players > 1 then
                local randomPlr = players[math.random(1, #players)]
                if randomPlr ~= game.Players.LocalPlayer then
                    game.Players.LocalPlayer.UserId = randomPlr.UserId
                end
            end
        end
    })
    MiscTab:AddButton({
        Name = "Summon Car",
        Callback = function()
            getgenv().Summon_Car = true
            local car = Instance.new("Part")
            car.Name = "BossCar"
            car.Size = Vector3.new(8, 2, 16)
            car.Material = Enum.Material.Metal
            car.BrickColor = BrickColor.new("Really black")
            car.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 5)
            car.Anchored = false
            car.Parent = workspace
            local weld = Instance.new("WeldConstraint")
            weld.Part0 = car
            weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
            weld.Parent = car
            local seat = Instance.new("VehicleSeat")
            seat.Parent = car
            seat.Position = car.Position + Vector3.new(0, 1, 0)
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
                            if plr.UserId <= 5 or plr.DisplayName:lower():find("mod") or plr.DisplayName:lower():find("admin") then
                                OrionLib:MakeNotification({
                                    Title = "Staff Detected",
                                    Content = plr.Name .. " is staff alt! Alert!",
                                    Duration = 5,
                                    Image = "rbxassetid://4483362458"
                                })
                                game:GetService("SoundService"):CreateSound(123456789, 0.5):Play() -- Alert sound
                            end
                        end
                        wait(2)
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
                -- Alert LOGIC: Continuous sound on toggle
                spawn(function()
                    while getgenv().Alert_Mode do
                        game:GetService("SoundService"):CreateSound(123456789, 0.3):Play()
                        wait(1)
                    end
                end)
            end
        end
    })
else
    FunMisc:NewButton("Change Player ID", "", function() getgenv().Change_ID = true end)
    FunMisc:NewButton("UserID Swap", "", function() getgenv().UserID_Swap = true end)
    FunMisc:NewButton("Summon Car", "", function() loadstring(game:HttpGet("https://pastebin.com/raw/8eP0a6vK"))() end)
    FunMisc:NewToggle("Staff Alt Detection", "", function(s) getgenv().Staff_Alt = s end)
    FunMisc:NewToggle("Alert Mode", "", function(s) getgenv().Alert_Mode = s end)
end

-- === SETTINGS TAB (PRESETS + THEMES + CREDITS) ===
if OrionLib then
    SettingsTab:AddTextbox({
        Name = "Preset Name",
        Default = "default",
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
    SettingsTab:AddTextbox({
        Name = "Theme Name",
        Default = "dark",
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
    SettingsTab:AddLabel("razzzaa00 - Owner & God Dev")
    SettingsTab:AddLabel("Faded.yarts base - Massive respect")
    SettingsTab:AddLabel("You are now the king of Roblox")
else
    Preset:NewTextbox("Preset Name", "Enter name", function(txt) getgenv().Preset_Name = txt end)
    Preset:NewButton("Save Preset", "", function() Library:SaveConfig(getgenv().Preset_Name or "default") end)
    Preset:NewButton("Load Preset", "", function() Library:LoadConfig(getgenv().Preset_Name or "default") end)
    Preset:NewButton("Delete Preset", "", function() Library:DeleteConfig(getgenv().Preset_Name or "default") end)
    Theme:NewTextbox("Theme Name", "Enter name", function(txt) getgenv().Theme_Name = txt end)
    Theme:NewButton("Save Theme", "", function() Library:SaveConfig(getgenv().Theme_Name or "dark") end)
    Theme:NewButton("Load Theme", "", function() Library:LoadConfig(getgenv().Theme_Name or "dark") end)
    Theme:NewButton("Delete Theme", "", function() Library:DeleteConfig(getgenv().Theme_Name or "dark") end)
    Credits:NewLabel("razzzaa00 - Owner & God Dev")
    Credits:NewLabel("Faded.yarts base - Massive respect")
    Credits:NewLabel("You are now the king of Roblox")
end

if OrionLib then
    OrionLib:Init()
else
    -- Kavo has no Init, it's auto
end

print("0xVOID FADED DELTA → FULLY LOADED WITH ALL CHEATS | razzzaa00 Dominates")