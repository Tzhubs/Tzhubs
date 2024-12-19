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

Main:AddSection("Teleport Island")

if First_Sea then
 IslandList = {
                "WindMill",
                "Marine",
                "Middle Town",
                "Jungle",
                "Pirate Village"
                "Desert",
                "Snow Island",
                "MarineFord",
                "Colosseum",
                "Sky Island 1",
                "Sky Island 2",
                "Sky Island 3",
                "Prison",
                "Magma Village",
                "Under Water Island",
                "Fountain City",
                "Shank Room",
                "Mob Island",
}

elseif Second_Sea then
       IslandList = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island",
       }

elseif Third_Sea then
    IslandList = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
        "Tiki Outpost",
       }
    end

local DropdownIsland = Main:AddDropdown("DropdownIsland",{
  Name = "Dropdown",
  Description = "",
  Values = IslandList,
  Multi = false,
  Default = 1,
})

DropdownIsland:SetValue("...")
DropdownIsland:OnChanged(function(Value)
    _G.SelectIsland = Value
end)

Main:AddButton({
  Name = "Tween",
  Description = "",
  Callback = function()
            if _G.SelectIsland == "WindMill" then
                toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland == "Marine" then
                toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland == "Middle Town" then
                toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland == "Jungle" then
                toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland == "Pirate Village" then
                toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland == "Desert" then
                toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland == "Snow Island" then
                toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.SelectIsland == "MarineFord" then
                toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland == "Colosseum" then
                toTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.SelectIsland == "Sky Island 1" then
                toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.SelectIsland == "Prison" then
                toTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland == "Magma Village" then
                toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland == "Fountain City" then
                toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland == "Shank Room" then
                toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.SelectIsland == "Mob Island" then
                toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland == "The Cafe" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                wait(0.5)
                Tween2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland == "Frist Spot" then
                toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland == "Dark Area" then
                toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.SelectIsland == "Flamingo Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
            elseif _G.SelectIsland == "Flamingo Room" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
            elseif _G.SelectIsland == "Green Zone" then
                toTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.SelectIsland == "Factory" then
                toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.SelectIsland == "Colossuim" then
                toTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland == "Zombie Island" then
                toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.SelectIsland == "Two Snow Mountain" then
                toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.SelectIsland == "Punk Hazard" then
                toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.SelectIsland == "Cursed Ship" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland == "Ice Castle" then
                toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.SelectIsland == "Forgotten Island" then
                toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.SelectIsland == "Ussop Island" then
                toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland == "Mini Sky Island" then
                Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.SelectIsland == "Great Tree" then
                toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.SelectIsland == "Castle On The Sea" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            elseif _G.SelectIsland == "MiniSky" then
                Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.SelectIsland == "Port Town" then
                toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland == "Hydra Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
            elseif _G.SelectIsland == "Floating Turtle" then
                toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
            elseif _G.SelectIsland == "Haunted Castle" then
                toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland == "Ice Cream Island" then
                toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.SelectIsland == "Peanut Island" then
                toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.SelectIsland == "Cake Island" then
                toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
            elseif _G.SelectIsland == "Cocoa Island" then
                toTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
            elseif _G.SelectIsland == "Candy Island" then
                toTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
            elseif _G.SelectIsland == "Tiki Outpost" then
                toTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
            end
        end
    })

Main:AddButton({
  Name = "Stop Tween",
  Description = "",
  Callback = function()
           toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    })

local Fruits = Window:MakeTab({"Fruit", "Fruit"})

local Raid = Window:MakeTab({"Raid", "Raid"})

local Eventos Do Mar = Window:MakeTab({"EventosDoMar", "EventosDoMar"})

local JobId Teleport = Window:MakeTab({"JobId Teleport", "Teleport"})

Main:AddToggle({
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
