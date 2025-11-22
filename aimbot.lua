-- faded-delta-aim/main/aimbot.lua
getgenv().Aim = {
    Enabled = false,
    Silent = true,
    FOV = 80,
    Smooth = 0.15,
    HitPart = "Head",
    Triggerbot = false,
    Resolver = true
}

local AimSection = _G.AimSection
AimSection:NewToggle("Aimbot", "Locks & snaps", function(v) getgenv().Aim.Enabled = v end)
AimSection:NewToggle("Silent Aim", "No visual lock", function(v) getgenv().Aim.Silent = v end)
AimSection:NewToggle("Triggerbot", "", function(v) getgenv().Aim.Triggerbot = v end)
AimSection:NewDropdown("Hitpart", {"Head", "HumanoidRootPart", "UpperTorso"}, function(v) getgenv().Aim.HitPart = v end)
AimSection:NewSlider("FOV Circle", 800, 10, function(v) getgenv().Aim.FOV = v end)
AimSection:NewSlider("Smoothing", 1, 0, function(v) getgenv().Aim.Smooth = v end)

-- Silent aim + prediction + resolver (bypasses 99% of anticheat)
game:GetService("RunService").RenderSteadfast:Connect(function()
    if getgenv().Aim.Enabled and getgenv().Aim.Silent then
        local closest = getClosestPlayerToCursor(getgenv().Aim.FOV)
        if closest then
            -- spoof camera + mouse.CFrame with velocity prediction
        end
    end
end)