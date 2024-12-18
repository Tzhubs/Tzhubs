-- Carregar a biblioteca Kavo UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Criar a janela principal da interface com o tema vermelho
local Window = Library.CreateLib("BielHub | version 3.0", "RedTheme")

-- Adicionar um botão para minimizar/maximizar a interface
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 100, 0, 50)
MinimizeButton.Position = UDim2.new(0, 10, 0, 10)
MinimizeButton.Text = "Minimizar"
MinimizeButton.Parent = Window

MinimizeButton.MouseButton1Click:Connect(function()
    Library:ToggleUI()
    MinimizeButton.Text = MinimizeButton.Text == "Minimizar" and "Maximizar" or "Minimizar"
end)

-- Função para tornar a interface móvel
local function makeDraggable(frame)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

-- Criar um frame invisível para arrastar
local dragFrame = Instance.new("Frame")
dragFrame.Size = UDim2.new(1, 0, 0, 50) -- Ajuste o tamanho conforme necessário
dragFrame.BackgroundTransparency = 1
dragFrame.Parent = Window -- Adicione o frame à janela principal

-- Tornar o frame invisível móvel
makeDraggable(dragFrame)

-- Adicionar abas à janela
local MainFarmingTab = Window:NewTab("Main farming")
local ConfigFarmTab = Window:NewTab("ConfigFarm")
local StatsTab = Window:NewTab("Stats")
local TeleportTab = Window:NewTab("Teleport")
local FruitsTab = Window:NewTab("Fruits")
local RaidsTab = Window:NewTab("Raids")
local JobIdTab = Window:NewTab("JobId")
local SettingsTab = Window:NewTab("Settings")

-- Adicionar seções e botões a cada aba
local MainFarmingSection = MainFarmingTab:NewSection("Minha Seção")
MainFarmingSection:NewButton("Meu Botão", "Informação do Botão", function()
    print("Botão clicado na aba Main farming!")
end)

local ConfigFarmSection = ConfigFarmTab:NewSection("Configurações de Farm")
ConfigFarmSection:NewButton("Configurar", "Configurações de Farm", function()
    print("Botão clicado na aba ConfigFarm!")
end)

local StatsSection = StatsTab:NewSection("Estatísticas")
StatsSection:NewButton("Ver Estatísticas", "Informação de Estatísticas", function()
    print("Botão clicado na aba Stats!")
end)

local TeleportSection = TeleportTab:NewSection("Teleporte")
TeleportSection:NewButton("Teleporte", "Informação de Teleporte", function()
    print("Botão clicado na aba Teleport!")
end)

local FruitsSection = FruitsTab:NewSection("Frutas")
FruitsSection:NewButton("Ver Frutas", "Informação de Frutas", function()
    print("Botão clicado na aba Fruits!")
end)

local RaidsSection = RaidsTab:NewSection("Raides")
RaidsSection:NewButton("Iniciar Raide", "Informação de Raides", function()
    print("Botão clicado na aba Raids!")
end)

local JobIdSection = JobIdTab:NewSection("ID do Trabalho")
JobIdSection:NewButton("Ver ID", "Informação de ID do Trabalho", function()
    print("Botão clicado na aba JobId!")
end)

local SettingsSection = SettingsTab:NewSection("Configurações")
SettingsSection:NewButton("Configurações Gerais", "Informação de Configurações", function()
    print("Botão clicado na aba Settings!")
end)
