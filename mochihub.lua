local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({Name = "Hu Tao Hub | Made by Mochi UwU", HidePremium = false, SaveConfig = true, ConfigFolder = "HuTaoScript"})

-- Tab Auto Farm
local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FarmTab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(Value)
        _G.AutoFarm = Value
        while _G.AutoFarm do
            wait(1)
            -- Tự động đánh quái (sơ bộ)
            local args = {
                [1] = "Attack",
                [2] = true
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
	end    
})

-- Tab Teleport
local TeleportTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://6035199320",
	PremiumOnly = false
})

TeleportTab:AddButton({
	Name = "Đến Đảo Khởi Đầu",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1047, 15, 1427)
  	end    
})

-- Tab Devil Fruit
local FruitTab = Window:MakeTab({
	Name = "Devil Fruits",
	Icon = "rbxassetid://5821767204",
	PremiumOnly = false
})

FruitTab:AddToggle({
	Name = "Tự Ăn Trái Gần Nhất",
	Default = false,
	Callback = function(Value)
        _G.AutoEat = Value
        while _G.AutoEat do
            wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v:IsA("Tool") and v.Name:find("Fruit") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                    wait(0.2)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                end
            end
        end
	end    
})

-- Anti AFK
local AntiAFK = game:service'Players'.LocalPlayer
AntiAFK.Idled:connect(function()
    game:service'VirtualUser':Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:service'VirtualUser':Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

OrionLib:Init()
