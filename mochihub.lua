repeat wait() until game:IsLoaded()

-- Tạo GUI nền
local ScreenGui = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")

ScreenGui.Name = "MochiHubGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

Background.Name = "Background"
Background.Parent = ScreenGui
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Position = UDim2.new(0, 0, 0, 0)
Background.BackgroundTransparency = 1
Background.Image = "rbxassetid://17324362045" -- Ảnh nền tím hoa anh đào

-- Load script chính
local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader"))()
end)

if not success then
    warn("Script không chạy được: ", err)
end
