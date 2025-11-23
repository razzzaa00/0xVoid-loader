-- 0xVoid ESP | Boxes + Names + Health + Distance + Tracers
local ESP = {}
local Players = game:GetService("Players")
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")

local function DrawESP(plr)
    if plr == Players.LocalPlayer then return end
    local box = Drawing.new("Square")
    box.Thickness = 2
    box.Filled = false
    box.Color = Color3.fromRGB(255,0,255)
    box.Visible = false

    local name = Drawing.new("Text")
    name.Size = 16
    name.Center = true
    name.Outline = true
    name.Color = Color3.new(1,1,1)
    name.Font = 2

    RunService.RenderStepped:Connect(function()
        if plr.Character and plr.Character:FindFirstChild("Head") then
            local vector, onScreen = Camera:WorldToViewportPoint(plr.Character.Head.Position)
            if onScreen then
                box.Size = Vector2.new(2000 / vector.Z, 3000 / vector.Z)
                box.Position = Vector2.new(vector.X - box.Size.X / 2, vector.Y - box.Size.Y / 2)
                box.Visible = true

                name.Text = plr.Name .. " [" .. math.floor((plr.Character.HumanoidRootPart.Position - Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude) .. "m]"
                name.Position = Vector2.new(vector.X, vector.Y - 40)
                name.Visible = true
            else
                box.Visible = false
                name.Visible = false
            end
        end
    end)
end

for _, plr in pairs(Players:GetPlayers()) do
    if plr ~= Players.LocalPlayer then
        DrawESP(plr)
    end
end

Players.PlayerAdded:Connect(DrawESP)