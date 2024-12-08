repeat wait() until game:IsLoaded() _G["Fumo Blox Fruit - HoHo Hub Kaitun V3"] = { MAIN_UI_COLOR = Color3.fromRGB(255, 165, 0), -- Color3.fromRGB(170, 85, 255)

BlackScreen = true, -- less lag
FastMode = true, -- true/false less lag
AutoRejoinGame = 1800, -- time in second, rejoin to bypass anticheat
GetFruitInWorld = true, -- true/false collect fruit
AutoTeam = "Pirate", -- Pirate/Marine
GetMelees = {"Superhuman", "Death Step","Sharkman Karate","Electric Claw","Dargon Talon", "Godhuman"}, -- remove if u dont wanna get what melee
Redeem_X2EXP_on = 10, -- to redeem all x2 exp code on what level
Character_Config = {
    InvisFromKen = true, -- true/false anyone use ken cant see your name
    NoStun = true, -- true/false make u dont get stuned when farming
},
ListFruitTake = {
    "Ice-Ice","Light-Light","Spider-Spider",'Magma-Magma','Flame-Flame','Rumble-Rumble','Dark-Dark','Quake-Quake','Buddha-Buddha',
    -- put fruit you want like above, recommend fruit can awake
    -- fruit list: 'Sand-Sand','Smoke-Smoke','Ice-Ice','Kilo-Kilo','Diamond-Diamond','Light-Light','Shadow-Shadow','Portal-Portal','Spider-Spider','Gravity-Gravity','Spin-Spin','Revive-Revive','Bird-Bird: Phoenix','Rubber-Rubber','Spring-Spring','Blizzard-Blizzard','Dough-Dough','Bomb-Bomb','Venom-Venom','Bird-Bird: Falcon','Spirit-Spirit','Love-Love','Leopard-Leopard','Dragon-Dragon','Spike-Spike','Magma-Magma','Control-Control','Flame-Flame','Rumble-Rumble','Dark-Dark','Chop-Chop','Quake-Quake','Buddha-Buddha','Barrier-Barrier',"Rocket-Rocket","Sound-Sound","Pain-Pain","Mammoth-Mammoth","Kitsune-Kitsune","T-Rex-T-Rex"
},
BuyBetterFruit = true, --true/false if u alr have fruit but better fruit stock it will buy it
EatFruitWhenSea3 = true, --true/false we need to keep fruit before third sea
AwakeFruit = true, --true/false awake after a raid
AutoBuy = {
    Shop_Items = true, --true/false auto buy all item sell with beli like Bisento,... we will buy when max level
    All_Haki = true, --true/false ken,buso,geppo,soru we will buy this in first
    Legendary_Swords = true, -- true/false buy all leg sword
    Ectoplasm_Items = true, -- true/false buy all ecto items
},
AutoItems = {
    ["Second Sea"] = {"Kabucha","Rengoku","Acidum Rifle","Dark Coat"},
    ["Third Sea"] = {"Cursed Dual Katana","Soul Guitar","Rainbow Haki","Hallow Scythe","Tushita","Yama","AutoElite","AutoRipIndra"},
    --remove rainbow haki or any thing if u dont want
},
Deep_Config = {
    -- Delay go to Third Sea
    ["Ectoplasm Farm"] = {
        Enabled = true, --true/false enabled is needable if u want Soul Guitar
        FarmUntil = 250, -- 250 = soul guitar price
    },
    ["Dark Beard Drop Farm"] = false, -- enabled this if u want 100% get Soul Guitar
    ["Full 3 Leg Sword and True Triple Katana"] = false, -- enabled this if u want 100% get true triple katana
},
HopServerFarm = true, -- true/false why not?
StopRaidWhenGetEnoughFrag = 10000, --10k is enough so we will farm faster
PVP_FARM = true, -- kill player grind exp fast
ShowAccountInfo = true, -- an ui with your account information
}

_G.BypassTeleport = false -- set it true if u wanna fast tp (idk if bug or not)

loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
