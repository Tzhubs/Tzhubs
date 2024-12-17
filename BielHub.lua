local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window

local function createWindow()
    Window = OrionLib:MakeWindow({
        Name = "BS HUB   |  ☆    discord.gg/bielscripts",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest",
        IntroText = "Bem-vindo ao BS HUB",
        Theme = {
        BackgroundColor = Color3.fromRGB(255,255, 255)
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
    
    -- ConfigFarm
    local ConfigTab = Window:MakeTab({
        Name = "ConfigFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
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

OrionLib:Init()
