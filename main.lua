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
	-- Ваш код для активации NoCl1p
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
