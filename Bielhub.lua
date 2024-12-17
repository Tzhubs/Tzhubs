local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window

local function createWindow()
    Window = OrionLib:MakeWindow({
        Name = "BS HUB",
        SubTitle = "discord.gg/bielscript",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest",
        IntroText = "Bem-vindo ao BS HUB",
        Theme = {
            MainColor = Color3.fromRGB(255, 0, 0),
            AccentColor = Color3.fromRGB(255, 0, 0),
            BackgroundColor = Color3.fromRGB(30, 30, 30),
            BorderColor = Color3.fromRGB(255, 0, 0)
        }
    })

    -- Main Farming
    local MainFarmingTab = Window:MakeTab({
        Name = "Main Farming",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    MainFarmingTab:AddDropdown({
        Name = "Escolha uma opção",
        Default = "1",
        Options = {"Normal Attack", "Fast attack", "Super Fas Attack"},
        Callback = function(selected)
            print("Você selecionou: " .. selected)
            -- Adicione aqui a função que você deseja executar com base na seleção
        end    
    })

    MainFarmingTab:AddButton({
        Name = "Auto farm level",
        Callback = function()
            print("Farming iniciado!")
            -- Adicione aqui a função que você deseja executar
        end    
    })

    MainFarmingTab:AddButton({
        Name = "Fast attack",
        Callback = function()
            print("Fast attack on")
            -- Adicione aqui a função que você deseja executar
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
