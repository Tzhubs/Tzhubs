local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/RedzLibV5/refs/heads/main/Source.lua"))()

local Window = redzlib:MakeWindow({
  "Biel Hub | Blox fruit",
  "by  luakingg2",
  "BloxFruit.json",
  BackgroundColor = Color3.fromRGB(255,255,255), -- Cor de fundo da janela
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas da janela
})

Window:AddMinimizeButton({
  Button = {
    Image = redzlib:GetIcon("rbxassetid://118273709653368"),
    Size = UDim2.fromOffset(60, 60),
    BackgroundTransparency = 0,
    BackgroundColor3 = Color3.fromRGB(50, 50, 50), -- Cor de fundo do botão
    BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do botão
  },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Main = Window:MakeTab({"Main", "home"})

Main:AddSection({"Tab Farming"})

Main:AddButton({
  Name = "BIEL HUB DISCORD SERVER",
  Description = "discord.gg/bielscripts",
  Callback = function()
    print("Bem-vindo ao Biel Hub")
    setclipboard("Discord.gg/bielscripts")
  end,
  BackgroundColor3 = Color3.fromRGB(70, 70, 70), -- Cor de fundo do botão
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do botão
})

local autoFarmActive = false

Main:AddToggle({
  Name = "Auto Farm Level",
  Description = "",
  Flag = "AtivaFarmLevel",
  Default = false,
  Callback = function(Value)
    autoFarmActive = Value
    if autoFarmActive then
      print("Auto Farm ativado")
      spawn(function()
        while autoFarmActive do
        
          local player = game.Players.LocalPlayer
          local character = player.Character or player.CharacterAdded:Wait()
          local humanoid = character:FindFirstChildOfClass("Humanoid")
          
          if humanoid then
            -- Lógica de farm, como mover o personagem, atacar inimigos, etc.
            humanoid:MoveTo(Vector3.new(0, 0, 0)) -- Exemplo de movimento
          end
          
          wait(1) -- Intervalo entre ações do Auto Farm
        end
      end)
    else
      print("Auto Farm desativado")
      -- Lógica para parar o Auto Farm, se necessário
    end
  end,
  BackgroundColor3 = Color3.fromRGB(90, 90, 90), -- Cor de fundo do toggle
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do toggle
})

Main:AddToggle({
  Name = "Start Fast Attack",
  Description = "",
  Flag = "ActivateClickQuick",
  Default = false,
  Callback = function(Value)
    -- Adicione a lógica para o toggle
    if Value then
      print("Start Fast Attack ativado")
    else
      print("Start Fast Attack desativado")
    end
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do toggle
})

Main:AddDropdown({
  Name = "Attack Mode",
  Description = "",
  Options = {"Normal Attack", "Fast attack", "Super Fast Attack"},
  Default = "",
  Flag = "Mododeataque",
  Callback = function(Value)
    -- Certifique-se de que PlayerId é a variável correta
    PlayerId = Value
    print("Modo de ataque selecionado: " .. Value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do dropdown
})

Main:AddSection({"Farm boss"})

Main:AddToggle({
  Name = "Start Farm Boss",
  Description = "",
  Flag = "FarmBoss",
  Default = false,
  Callback = function(Value)
    -- Adicione a lógica para o toggle
    if Value then
      print("Farm Boss ativado")
    else
      print("Farm Boss desativado")
    end
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do toggle
})

Main:AddDropdown({
  Name = "Sea 1 Select Boss",
  Description = "",
  Options = {"Vice Admiral", "Gorilla King", "Bobby", "The Saw", "Yeti", "Mob Leader", "Saber Expert", "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Ice Admiral", "GreyBeard"},
  Default = "",
  Flag = "Select Boss",
  Callback = function(Value)
    -- Certifique-se de que PlayerId é a variável correta
    PlayerId = Value
    print("Boss selecionado: " .. Value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do dropdown
})

Main:AddDropdown({
  Name = "Sea 2 Select Boss",
  Description = "",
  Options = {"Diamont", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Awakened Ice Admiral", "Tide Keeper", "Dark Beard", "Cursed Captain", "Order"},
  Default = "",
  Flag = "Select Boss",
  Callback = function(Value)
    -- Certifique-se de que PlayerId é a variável correta
    PlayerId = Value
    print("Boss selecionado: " .. Value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do dropdown
})

Main:AddDropdown({
  Name = "Sea 3 Select Boss",
  Description = "",
  Options = {"Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate", "Cake queen", "Longma", "Soul Reaper", "Rip_Indra True Form"},
  Default = "",
  Flag = "Select boss",
  Callback = function(Value)
    -- Certifique-se de que PlayerId é a variável correta
    PlayerId = Value
    print("Boss selecionado: " .. Value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do dropdown
})

Main:AddSection({"Farm Material"})

Main:AddToggle({
  Name = "Start Farm Material",
  Description = "",
  Flag = "FarmMaterial",
  Default = false,
  Callback = function(Value)
    -- Adicione a lógica para o toggle
    if Value then
      print("Farm Material ativado")
    else
      print("Farm Material desativado")
    end
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do toggle
})

Main:AddDropdown({
  Name = "Select Farm Material",
  Description = "",
  Options = {"Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail","Radioactive Material","Mystic Droplet","Vampire Fang","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Mini Tusk"},
  Default = "",
  Flag = "Select Material",
  Callback = function(Value)
    -- Certifique-se de que PlayerId é a variável correta
    PlayerId = Value
    print("Material selecionado: " .. Value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do dropdown
})

local ConfigFarm = Window:MakeTab({"Config Farm", "Config"})

Main:AddSlider({
  Name = "Attack Speed ",
  Min = 0.1,
  Max = 100.0,
  Default = 100,
  Callback = function(value)
    -- Adicione a lógica para o slider
    print("Valor do slider: " .. value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do slider
})

Main:AddDropdown({
  Name = "Select Farm Mode",
  Description = "",
  Options = {"Melee", "Sword", "Blox fruit"},
  Default = "",
  Flag = "Mododefarm",
  Callback = function(Value)
    -- Certifique-se de que PlayerId é a variável correta
    PlayerId = Value
    print("Modo de farm selecionado: " .. Value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do dropdown
})

local Stats Player= Window:MakeTab({"Stats", "Stats"})

local playerStats = {}

-- Tabela para armazenar o status dos eventos
local eventStatus = {
    mirageIsland = false,
    kitsuneIsland = false,
    eliteHunter = false
}
function addPlayer(playerName)
    if not playerStats[playerName] then
        playerStats[playerName] = {level = 1, experience = 0, health = 100, energy = 100}
        print(playerName .. " foi adicionado ao servidor de estatísticas.")
    else
        print(playerName .. " já está no servidor de estatísticas.")
    end
function updateStats(playerName, level, experience, health, energy)
    if playerStats[playerName] then
        playerStats[playerName].level = level or playerStats[playerName].level
        playerStats[playerName].experience = experience or playerStats[playerName].experience
        playerStats[playerName].health = health or playerStats[playerName].health
        playerStats[playerName].energy = energy or playerStats[playerName].energy
        print("Estatísticas de " .. playerName .. " foram atualizadas.")
    else
        print(playerName .. " não está no servidor de estatísticas.")
    end
end
function getStats(playerName)
    if playerStats[playerName] then
        return playerStats[playerName]
    else
        print(playerName .. " não está no servidor de estatísticas.")
        return nil
    end
end
function updateEventStatus(mirage, kitsune, elite)
    eventStatus.mirageIsland = mirage or eventStatus.mirageIsland
    eventStatus.kitsuneIsland = kitsune or eventStatus.kitsuneIsland
    eventStatus.eliteHunter = elite or eventStatus.eliteHunter
    print("Status dos eventos atualizado.")
end
function getEventStatus()
    return eventStatus
end
addPlayer("Jogador1")
updateStats("Jogador1", 10, 500, 90, 80)
updateEventStatus(true, false, true)

local stats = getStats("Jogador1")
local events = getEventStatus()

print("Estatísticas do Jogador1:", stats)
print("Status dos eventos:", events)
end

local Teleport = Window:MakeTab({"Teleport", "Teleport"})

local Fruits = Window:MakeTab({"Fruit", "Fruit"})

local Raid = Window:MakeTab({"Raid", "Raid"})

local Eventos Do Mar = Window:MakeTab({"EventosDoMar", "EventosDoMar"})

local JobId Teleport = Window:MakeTab({"JobId Teleport", "Teleport"})

function teleportToServer(serverId)
    -- Aqui você colocaria o código específico do jogo para teleportar
    -- Exemplo fictício:
    print("Teleportando para o servidor com ID: " .. serverId)
    -- Código de teleporte do jogo vai aqui
end

-- Insira o ID do servidor aqui
local serverId = "INSIRA_O_ID_DO_SERVIDOR_AQUI"

-- Teleportar para o servidor especificado
teleportToServer(serverId)

local ConfigFarm = Window:MakeTab({"Esp", "Esp"})
