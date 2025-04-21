repeat wait() until game:IsLoaded()

-- Tạo GUI dễ thương
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MochiGUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 400, 0, 250)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "Mochi Hub | Blox Fruits"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true
Title.Parent = MainFrame

local AutoFarmBtn = Instance.new("TextButton")
AutoFarmBtn.Size = UDim2.new(0, 200, 0, 40)
AutoFarmBtn.Position = UDim2.new(0.5, -100, 0, 60)
AutoFarmBtn.Text = "Bật Auto Farm"
AutoFarmBtn.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
AutoFarmBtn.Font = Enum.Font.Gotham
AutoFarmBtn.TextColor3 = Color3.new(1, 1, 1)
AutoFarmBtn.TextScaled = true
AutoFarmBtn.Parent = MainFrame

-- Thêm chức năng Auto Farm
local AutoFarm = false
AutoFarmBtn.MouseButton1Click:Connect(function()
    AutoFarm = not AutoFarm
    AutoFarmBtn.Text = AutoFarm and "Đang Farm..." or "Bật Auto Farm"

    while AutoFarm do
        -- Đây chỉ là ví dụ, Onii-chan có thể thêm logic farm boss, farm mob ở đây
        game:GetService("ReplicatedStorage").Remotes.Combat:FireServer("sword") -- ví dụ
        wait(1)
    end
end)
