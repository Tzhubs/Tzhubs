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
  Name = "Auto Farm level",
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

Main:AddSlider({
  Name = "Num sei",
  Min = 0,
  Max = 1000,
  Default = 100,
  Callback = function(value)
    -- Adicione a lógica para o slider
    print("Valor do slider: " .. value)
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do slider
})

Main:AddToggle({
  Name = "Ativa nada",
  Description = "",
  Flag = "Nada",
  Default = false,
  Callback = function(Value)
    -- Adicione a lógica para o toggle
    if Value then
      print("Ativa nada ativado")
    else
      print("Ativa nada desativado")
    end
  end,
  BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cor das bordas do toggle
})

local ConfigFarm = Window:MakeTab({"Config Farm", "Config"})

local Stats Player= Window:MakeTab({"Stats Player", "Stats Player"})

local ConfigFarm = Window:MakeTab({"Teleport", "Teleport"})

local ConfigFarm = Window:MakeTab({"Fruit", "Fruit"})

local ConfigFarm = Window:MakeTab({"Raid", "Raid"})

local ConfigFarm = Window:MakeTab({"JobId Teleport", "Teleport"})

-- Função para teleportar para um servidor específico
function teleportToServer(serverId)
    -- Aqui você colocaria o código específico do jogo para teleportar
    -- Exemplo fictício:
    print("Teleportando para o servidor com ID: " .. serverId)
    -- Código de teleporte do jogo vai aqui
end

-- Criar uma interface simples para inserir o ID do servidor
local ScreenGui = Instance.new("ScreenGui")
local TextBox = Instance.new("TextBox")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Position = UDim2.new(0.5, -100, 0.5, -25)
TextBox.PlaceholderText = "Insira o ID do servidor"
TextBox.Parent = ScreenGui

Button.Size = UDim2.new(0, 200, 0, 50)
Button.Position = UDim2.new(0.5, -100, 0.5, 50)
Button.Text = "Teleportar"
Button.Parent = ScreenGui

Button.MouseButton1Click:Connect(function()
    local serverId = TextBox.Text
    teleportToServer(serverId)
end)


local ConfigFarm = Window:MakeTab({"Esp", "Esp"})
