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

local Teleport = Window:MakeTab({"Teleport", "Teleport"})

Main:AddButton({
  Name = "First Sea",
  Description = "Sea 1",
  Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end,
})

Main:AddButton({
  Name = "Second Sea",
  Description = "Sea 2",
  Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end,
})

Main:AddButton({
    Name = "Third Sea",
    Description = "Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end,
})

local Fruits = Window:MakeTab({"Fruit", "Fruit"})

local Raid = Window:MakeTab({"Raid", "Raid"})

local Eventos Do Mar = Window:MakeTab({"EventosDoMar", "EventosDoMar"})

local JobId Teleport = Window:MakeTab({"JobId Teleport", "Teleport"})

local ConfigFarm = Window:MakeTab({"Esp", "Esp"})
