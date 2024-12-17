local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window

local function createWindow()
    Window = OrionLib:MakeWindow({
        Name = "BS HUB   |    ☆    discord.gg/bielscripts",
        SubTitle = "discord.gg/bielscript",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest",
        IntroText = "Bem-vindo ao BS HUB",
        Theme = {
            MainColor = Color3.fromRGB(255, 0, 0),
            AccentColor = Color3.fromRGB(255, 0, 0),
            BackgroundColor = Color3.fromRGB(255, 0, 0),
            BorderColor = Color3.fromRGB(192, 192, 192)
        }
    })

    -- Main Farming
    local MainFarmingTab = Window:MakeTab({
        Name = "Main Farming",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    MainFarmingTab:AddButton({
        Name = "Auto farm level",
        Callback = function()
            print("Farming iniciado!")
            -- Adicione aqui a função que você deseja executar
        end    
    })    
    
    MainFarmingTab:AddDropdown({
        Name = "Select Attack Type",
        Default = "1",
        Options = {"Normal Attack", "Fast attack", "Super Fas Attack"},
        Callback = function(selected)
            print("Você selecionou: " .. selected)
            -- Adicione aqui a função que você deseja executar com base na seleção
        end    
    })
    
    MainFarmingTab:AddButton({
        Name = "Fast attack",
        Callback = function()
            print("Fast attack on")
            -- Adicione aqui a função que você deseja executar
        end    
    })
    
    local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Position = UDim2.new(0.5, -100, 0.4, -25) -- Ajuste a posição conforme necessário
TextLabel.Text = "Farm Settings Boss"
TextLabel.TextColor3 = Color3.new(0, 0, 0) -- Cor do texto
TextLabel.TextScaled = true -- Ajusta o tamanho do texto automaticamente
TextLabel.BackgroundTransparency = 1 -- Torna o fundo transparente

    MainFarmingTab:AddDropdown({
        Name = "Sea 1 Select boss",
        Default = "1",
        Options = {"Vice Admiral", "Gorilla King", "Bobby", "The Saw", "Yeti", "Mob Leader", "Saber Expert", "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Ice Admiral", "GreyBeard"},
        Callback = function(selected)
            print("Você selecionou: " .. selected)
            -- Adicione aqui a função que você deseja executar com base na seleção
        end    
    })

MainFarmingTab:AddDropdown({
        Name = "Sea 2 Select Boss",
        Default = "1",
        Options = {"Diamont", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Awakened Ice Admiral", "Tide Keeper", "Dark Beard", "Cursed Captain", "Order"},
        Callback = function(selected)
            print("Você selecionou: " .. selected)
            -- Adicione aqui a função que você deseja executar com base na seleção
        end    
    })
    
    MainFarmingTab:AddDropdown({
        Name = "Sea 3 Select Boss",
        Default = "1",
        Options = {"Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate", "Cake queen", "Longma", "Soul Reaper", "Rip_Indra True Form"},
        Callback = function(selected)
            print("Você selecionou: " .. selected)
            -- Adicione aqui a função que você deseja executar com base na seleção
        end    
    })

    -- SubFarming
    local SubFarmingTab = Window:MakeTab({
        Name = "SubFarming",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Stats
    local StatsTab = Window:MakeTab({
        Name = "Stats",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Frutas
    local FrutasTab = Window:MakeTab({
        Name = "Frutas",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Raids
    local RaidsTab = Window:MakeTab({
        Name = "Raids",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- ESP
    local ESPTab = Window:MakeTab({
        Name = "ESP",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Configurações
    local ConfigTab = Window:MakeTab({
        Name = "Configurações",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Webhook Teleport
    local WebhookTeleportTab = Window:MakeTab({
        Name = "Webhook Teleport",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
end

createWindow()

-- Close UI
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=1138061876" -- Verifique o ID da imagem

UICorner.CornerRadius = UDim.new(0, 10) -- Define as bordas quadradas com pontas arredondadas
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:connect(function()
    if Window then
        Window:Destroy()
        Window = nil
    else
        createWindow()
        OrionLib:Init()
    end
end)

OrionLib:Init()
