local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Создание GUI
local HackerGui = Instance.new("ScreenGui")
HackerGui.Name = "HackerGui"
HackerGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Name = "Frame"
Frame.Position = UDim2.new(0, 10, 0, 10)
Frame.Size = UDim2.new(0, 200, 0, 120)
Frame.BackgroundTransparency = 0.5
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
Frame.BorderSizePixel = 2
Frame.ZIndex = 2
Frame.Parent = HackerGui

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Position = UDim2.new(0, 5, 0, 5)
Title.Size = UDim2.new(1, -10, 0, 20)
Title.Font = Enum.Font.Fantasy
Title.Text = "EzPanel"
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.TextSize = 14
Title.BackgroundTransparency = 1
Title.Parent = Frame

local Button1 = Instance.new("TextButton")
Button1.Name = "Button1"
Button1.Position = UDim2.new(0, 5, 0, 30)
Button1.Size = UDim2.new(0, 190, 0, 30)
Button1.Font = Enum.Font.Fantasy
Button1.Text = "NoCl1p"
Button1.TextColor3 = Color3.fromRGB(0, 255, 0)
Button1.TextSize = 14
Button1.BackgroundTransparency = 0.5
Button1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button1.BorderColor3 = Color3.fromRGB(0, 255, 0)
Button1.BorderSizePixel = 1
Button1.ZIndex = 2
Button1.Parent = Frame

local Button2 = Instance.new("TextButton")
Button2.Name = "Button2"
Button2.Position = UDim2.new(0, 5, 0, 65)
Button2.Size = UDim2.new(0, 190, 0, 30)
Button2.Font = Enum.Font.Fantasy
Button2.Text = "Fly"
Button2.TextColor3 = Color3.fromRGB(0, 255, 0)
Button2.TextSize = 14
Button2.BackgroundTransparency = 0.5
Button2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button2.BorderColor3 = Color3.fromRGB(0, 255, 0)
Button2.BorderSizePixel = 1
Button2.ZIndex = 2
Button2.Parent = Frame

local Button3 = Instance.new("TextButton")
Button3.Name = "Button3"
Button3.Position = UDim2.new(0, 5, 0, 100)
Button3.Size = UDim2.new(0, 190, 0, 30)
Button3.Font = Enum.Font.Fantasy
Button3.Text = "TPX"
Button3.TextColor3 = Color3.fromRGB(0, 255, 0)
Button3.TextSize = 14
Button3.BackgroundTransparency = 0.5
Button3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button3.BorderColor3 = Color3.fromRGB(0, 255, 0)
Button3.BorderSizePixel = 1
Button3.ZIndex = 2
Button3.Parent = Frame

-- Обработчики нажатия кнопок
Button1.MouseButton1Click:Connect(function()
	print("NoCl1p активирован")
	local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false
 
Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui
 
BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true
 
Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "NoCl1p Tool"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 25
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0
 
Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Переключить"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 20
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0
 
StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Статус:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true
 
Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "выкл"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left
 
Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "rePack by 4Binor."
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true
 
Toggle.MouseButton1Click:connect(function()
	if Status.Text == "выкл" then
		Clipon = true
		Status.Text = "вкл"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "вкл" then
		Clipon = false
		Status.Text = "выкл"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)

end)

Button2.MouseButton1Click:Connect(function()
	print("Fly активирован")
	-- Ваш код для активации режима полёта
end)

Button3.MouseButton1Click:Connect(function()
	print("TPX активирован")
	for i,v in next, game.CoreGui:GetChildren() do
    if v.Name == "ScreenGui" and v.ImageButton then
        v:Destroy()
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/Ui-Libraries/main/uwuware", true))()
local Players = {}

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA"Model" and game.Players:FindFirstChild(v.Name) then
        table.insert(Players, (tostring(v.Name)))
    end
end

local Window = Library:CreateWindow"Телепортация"


  
local Players = Window:AddList({text = "Выберите игрока", flag = "list", values = Players, callback = function(selected)
    getgenv().selectedPlayer = selected
end})


Window:AddButton({text = "Телепорт", flag = "button", callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(getgenv().selectedPlayer).Character:WaitForChild("HumanoidRootPart").CFrame
end})




Library:Init()

end)
