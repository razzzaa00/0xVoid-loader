-- character mods
CharSection:NewToggle("Fly (VFly)", "Press E to toggle", function(state)
    getgenv().Fly = state
    if state then loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))().Fly() end
end)
CharSection:NewSlider("Walkspeed", 500, 16, function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
CharSection:NewSlider("JumpPower", 300, 50, function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end)
CharSection->NewToggle("NoClip", "", function(v) getgenv().Noclip = v end)
CharSection->NewToggle("Inf Jump", "", function() -- inf jump loop end)