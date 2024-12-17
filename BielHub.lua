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
            MainColor = Color3.fromRGB(255, 0, 0),  -- Cor principal
            AccentColor = Color3.fromRGB(255, 0, 0),  -- Cor de destaque
            BackgroundColor = Color3.fromRGB(30, 30, 30),  -- Cor de fundo
            BorderColor = Color3.fromRGB(255, 0, 0),  -- Cor da borda
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
        Options = {"Normal Attack", "Fast attack", "Super Fast Attack"},
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
OrionLib:Init()
