-- Rayfield UI starter for a clean Steal An Egg helper
-- This is a UI-only scaffold, not a drop-in conversion of the original 31k-line script.
-- Add only game-permitted, non-player-targeting callbacks where marked.

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Egg Helper",
    LoadingTitle = "Egg Helper",
    LoadingSubtitle = "Rayfield UI",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "EggHelper",
        FileName = "Settings"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = false
    },
    KeySystem = false
})

local GeneralTab = Window:CreateTab("General", "egg")
local GeneralSection = GeneralTab:CreateSection("General")

GeneralTab:CreateParagraph({
    Title = "UI scaffold",
    Content = "This clean Rayfield shell replaces the branded window only. Connect game-permitted features to callbacks below."
})

GeneralTab:CreateToggle({
    Name = "Example setting",
    CurrentValue = false,
    Flag = "ExampleSetting",
    Callback = function(enabled)
        -- TODO: connect a permitted local setting here.
    end
})

GeneralTab:CreateButton({
    Name = "Reset UI settings",
    Callback = function()
        Rayfield:Notify({
            Title = "Egg Helper",
            Content = "Use Rayfield's configuration controls to manage saved settings.",
            Duration = 4
        })
    end
})

local InfoTab = Window:CreateTab("Info", "info")
InfoTab:CreateParagraph({
    Title = "About",
    Content = "Unbranded UI scaffold. It intentionally does not include automated stealing from other players, anti-hit/anti-guard bypasses, or other exploit behavior."
})

-- Rayfield:LoadConfiguration()
