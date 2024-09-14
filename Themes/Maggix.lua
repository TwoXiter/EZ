Module = {}
------ Manager ------
local function MakeDraggable(gui)
	gui.Active = true
	gui.Selectable = true
	gui.Draggable = true
end

local function Make(ClassName, Values)
    local instance = Instance.new(ClassName)
    for a,b in pairs(Values) do
        instance[a] = b
    end
    return instance
end

function Module.Main(tabela)
    if not isfile(tabela.HubName) then
        writefile(tabela.HubName, "")
    end
    
    local ServiceID = tabela.Service
    local PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))()
    local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/notify_ui.lua"))()
    if loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/Quasar/main/src/Settings/Keyless.lua"))() and tabela.Service == "zyne" then
	tabela.NormalScript()
    end
    if PandaAuth:ValidateKey(ServiceID,readfile(tabela.HubName)) then
        tabela.NormalScript()
    end

------ Ui Libary ------
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/Fluent.lua"))()

local Window = Fluent:CreateWindow({
    Title = tabela.HubName.. " - Key System",
    SubTitle = "",
    TabWidth = 30,
    Size = UDim2.fromOffset(255, 233),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.F15
})

  local Tabs = {
    Info = Window:AddTab({ Title = "", Icon = "info" }),
    Main = Window:AddTab({ Title = "", Icon = "rbxassetid://17542643869" }),
}

------ Functions ------
function keyValid()
        if PandaAuth:ValidateKey(ServiceID, keyTextbox) then
            writefile(tabela.HubName, keyTextbox)
     local function Notify(v)
        Fluent:Notify({
        Title = "Correcr Key! Loading Script",
        Content = "May Take Long...",
        Duration = 5
    })
end
            tabela.NormalScript()
	    Fluent:Destroy()
        else
          local function Notify(v)
        Fluent:Notify({
        Title = "Invalid Key",
        Content = v,
        Duration = 5
    })
end
            end
end
  
  function GetKey()
        setclipboard(loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))():GetKey(tabela.Service))
        local function Notify(v)
    Fluent:Notify({
        Title = "Copied URL To Paste Into Your Browser",
        Content = v,
        Duration = 2
    })
end
    end

------ Informations ------
  Tabs.Info:AddButton({
    Title = tabela.Discord,
    Description = "",
    Callback = function()
       setcliboard(tabela.Discord)
    end
})

Tabs.Info:AddParagraph({
    Title = tabela.Info,
    Content = ""
})

------ Key Manager ------
  Tabs.Main:AddButton({
    Title = "Get Key",
    Description = "",
    Callback = function()
        GetKey()
    end
})

 Tabs.Main:AddInput("Input", {
    Title = "",
    Default = "",
    Placeholder = "Put Your Key",
    Numeric = false,
    Finished = false,
    Callback = function(va)
        keyTextbox = va
    end
})

Tabs.Main:AddButton({
    Title = "Check Key",
    Description = "",
    Callback = function()
        keyValid(keyTextbox)
    end
})

------ End ------
	local function Notify(v)
    Fluent:Notify({
        Title = "Loaded",
        Content = v,
        Duration = 2
    })
end
    local function Notify(v)
    Fluent:Notify({
        Title = "Made by toshy.vhs",
        Content = v,
        Duration = 5
    })
end 
    end

return Module
