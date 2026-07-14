local WindUI = loadstring(game:HttpGet(
    "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local NotificationsEnabled = true
local AutoLoading = false
local Clipon = false
local Stepped

-- Окно
local Window = WindUI:CreateWindow({
    Title = "Monty Hub",
    Author = "by arreltbcc",
    Icon = "skull",
    Size = UDim2.fromOffset(350, 250),
    

    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            -- код
        end,
    }
})

-- TABS
local Main = Window:Tab({ Title = "Main", Icon = "user" })
local AutoFarm = Window:Tab({ Title = "Auto Farm" , Icon = "leaf" })
local Combat = Window:Tab({ Title = "Combat", Icon = "sword" })
local TeleportTab = Window:Tab({ Title = "Teleport", Icon = "map-pinned" })
local ESP = Window:Tab({ Title = "ESP", Icon = "eye" })
local Info = Window:Tab({ Title = "Info", Icon = "info" })

-- MAIN

Main:Section({
    Title = "Player",
    Icon = "user"
})

Main:Toggle({
    Title = "Speed Boost",
    Default = false,
    Callback = function(Value)
        SpeedEnabled = Value

        local Character = LocalPlayer.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

        if Humanoid then
            if Value then
                Humanoid.WalkSpeed = 32
            else
                Humanoid.WalkSpeed = 16
            end
        end
    end
})

Main:Slider({
    Title = "WalkSpeed",
    Value = {
        Min = 16,
        Max = 500,
        Default = 16
    },
    Callback = function(value)
        local character = game.Players.LocalPlayer.Character
        local humanoid = character and character:FindFirstChild("Humanoid")

        if humanoid then
            humanoid.WalkSpeed = value
        end
    end
})

Main:Slider({
    Title = "JumpBoost",
    Step = 1,
    Value = {
        Min = 50,
        Max = 500,
        Default = 50
    },
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = Value
        end
    end
})

Main:Toggle({
    Title = "Infinity Jump",
    Default = false,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local uis = game:GetService("UserInputService")

        if Value then
            if not _G.InfJumpConnection then
                _G.InfJumpConnection = uis.JumpRequest:Connect(function()
                    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end)
            end
        else
            if _G.InfJumpConnection then
                _G.InfJumpConnection:Disconnect()
                _G.InfJumpConnection = nil
            end
        end
    end
})


Main:Toggle({
    Title = "Invisible",
    Default = false,
    Callback = function(Value)
        InvisibleEnabled = Value
        print("Invisible:", Value)

        local Players = game:GetService("Players")
        local plr = Players.LocalPlayer

        local function setTransparency(char, val)
            for _, p in ipairs(char:GetDescendants()) do
                if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                    p.Transparency = val
                end
            end
        end

        if Value then
            local char = plr.Character
            if char then
                setTransparency(char, 0.5)
                local savedpos = char.HumanoidRootPart.CFrame
                task.wait()
                char:MoveTo(Vector3.new(-25.95, 84, 3537.55))
                task.wait(0.15)
                local Seat = Instance.new("Seat", workspace)
                Seat.Anchored = false
                Seat.CanCollide = false
                Seat.Name = "invischair"
                Seat.Transparency = 1
                Seat.Position = Vector3.new(-25.95, 84, 3537.55)
                local Weld = Instance.new("Weld", Seat)
                Weld.Part0 = Seat
                Weld.Part1 = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
                Seat.CFrame = savedpos
                print("Invisibility Enabled")
            end
        else
          
            local char = plr.Character
            if char then
                setTransparency(char, 0)
                if workspace:FindFirstChild("invischair") then
                    workspace.invischair:Destroy()
                end
                print("Invisibility Disabled")
            end
        end
    end
})

Main:Toggle({
    Title = "Noclip",
    Default = false,
    Callback = function(Value)
        Clipon = Value
        if Clipon then
            Stepped = RunService.Stepped:Connect(function()
                if LocalPlayer.Character then
                    for _,v in pairs(LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then v.CanCollide = false end
                    end
                end
            end)
        else
            if Stepped then Stepped:Disconnect() end
        end
    end
})

Main:Toggle({
    Title = "Infinity Stamina",
    Default = false,
    Callback = function(Value)
        if Value then
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            task.spawn(function()
                while Value do
                    for _, obj in ipairs(LocalPlayer:GetDescendants()) do
                        if obj:IsA("NumberValue") or obj:IsA("IntValue") then
                            local name = string.lower(obj.Name)
                            if string.find(name, "stamina") or string.find(name, "energy") then
                                obj.Value = obj.MaxValue or 999999
                            end
                        end
                    end

                    if LocalPlayer.Character then
                        for name, value in pairs(LocalPlayer.Character:GetAttributes()) do
                            local lname = string.lower(name)
                            if string.find(lname, "stamina") or string.find(lname, "energy") then
                                LocalPlayer.Character:SetAttribute(name, 999999)
                            end
                        end
                    end

                    task.wait(0.1)
                end
            end)
        end
    end
})


--AUTO FARM

AutoFarm:Toggle({
    Title = "Generator Helper",
    Default = false,
    Callback = function(Value)
        AutoFarm = Value

        if AutoFarm then
            print("Auto Farm Enabled")
        else
            print("Auto Farm Disabled")
        end
    end
})


-- COMBAT

Combat:Section({
    Title = "Kill Aura",
    Icon = "sword"
})

Combat:Toggle({
    Title = "Kill Aura",
    Default = false,
    Callback = function(Value)
        KillAuraEnabled = Value
        print("Kill Aura:", Value)
    end
})

Combat:Slider({
    Title = "Aura Distance",
    Step = 1,
    Value = {
        Min = 1,
        Max = 100,
        Default = 10
    },
    Callback = function(Value)
        AuraDistance = Value
        print("Aura Distance:", Value)
    end
})

Combat:Section({
    Title = "Hitboxes",
    Icon = "box"
})

Combat:Toggle({
    Title = "Hitboxes",
    Default = false,
    Callback = function(Value)
        HitboxesEnabled = Value
        print("Hitboxes:", Value)
    end
})

Combat:Slider({
    Title = "Hitboxes Distance",
    Step = 1,
    Value = {
        Min = 1,
        Max = 100,
        Default = 10
    },
    Callback = function(Value)
        HitboxesDistance = Value
        print("Hitboxes Distance:", Value)
    end
})

-- TELEPORT 

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local SelectedPlayer = nil

TeleportTab:Dropdown({
    Title = "TP to Player",
    Values = (function()
        local PlayersList = {}
        for _, Player in ipairs(Players:GetPlayers()) do
            if Player ~= LocalPlayer then
                table.insert(PlayersList, Player.Name)
            end
        end
        return PlayersList
    end)(),
    Callback = function(Value)
        SelectedPlayer = Value
        local Target = Players:FindFirstChild(Value)

        if Target
            and Target.Character
            and Target.Character:FindFirstChild("HumanoidRootPart")
            and LocalPlayer.Character
            and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

            -- телепортируем локального игрока к выбранному
            LocalPlayer.Character.HumanoidRootPart.CFrame =
                Target.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        end
    end
})

TeleportTab:Button({
    Title = "TP to home",
    Callback = function()
        print("Test Button нажата")
    end
})

-- ESP

ESP:Toggle({
    Title = "Esp Players",
    Default = false,
    Callback = function(Value)
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer

        local function updateESP(player)
            if player == LocalPlayer then return end
            local character = player.Character
            if not character then return end

            if Value then
                local highlight = character:FindFirstChild("PlayerESP")
                if not highlight then
                    highlight = Instance.new("Highlight")
                    highlight.Name = "PlayerESP"
                    highlight.FillColor = Color3.fromRGB(0, 255, 0) -- green
                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlight.OutlineTransparency = 0
                    highlight.FillTransparency = 0.3
                    highlight.Parent = character
                end
            else
                local existing = character:FindFirstChild("PlayerESP")
                if existing then existing:Destroy() end
            end
        end

        local function setupPlayer(player)
            player.CharacterAdded:Connect(function()
                task.wait(0.5)
                updateESP(player)
            end)
            if player.Character then
                updateESP(player)
            end
        end

        for _, player in ipairs(Players:GetPlayers()) do
            setupPlayer(player)
        end

        Players.PlayerAdded:Connect(setupPlayer)

        -- при выключении сразу удаляем все ESP и не включаем снова
        if not Value then
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Character then
                    local existing = player.Character:FindFirstChild("PlayerESP")
                    if existing then existing:Destroy() end
                end
            end
        end
    end
})


ESP:Toggle({
    Title = "Esp Items",
    Default = false,
    Callback = function(Value)
        if Value then
            local Workspace = game:GetService("Workspace")

            local function applyAxisESP()
                if not Value then
                    for _, obj in ipairs(Workspace:GetDescendants()) do
                        if obj:IsA("Highlight") and obj.Name == "AxisESP" then
                            obj:Destroy()
                        end
                    end
                    return
                end

                for _, axis in ipairs(Workspace:GetDescendants()) do
                    -- Проверяем объекты-оси (например, Part с именем "Axis")
                    if axis:IsA("Part") and string.find(string.lower(axis.Name), "axis") then
                        local highlight = axis:FindFirstChild("AxisESP")
                        if not highlight then
                            highlight = Instance.new("Highlight")
                            highlight.Name = "AxisESP"
                            highlight.FillColor = Color3.fromRGB(255, 255, 0) -- yellow color
                            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                            highlight.OutlineTransparency = 0
                            highlight.FillTransparency = 0.3
                            highlight.Parent = axis
                        end
                    end
                end
            end

            task.spawn(function()
                while Value do
                    applyAxisESP()
                    task.wait(1)
                end
            end)
        end
    end
})

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ESPEnabled = false

ESP:Toggle({
    Title = "Esp NPCs",
    Default = false,
    Callback = function(Value)
        ESPEnabled = Value

        local function applyNPCESP()
            if not ESPEnabled then
                -- удаляем все подсветки при выключении
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj:IsA("Highlight") and obj.Name == "NPCESP" then
                        obj:Destroy()
                    end
                end
                return
            end

            for _, npc in ipairs(Workspace:GetDescendants()) do
                if npc:IsA("Model") and npc:FindFirstChildOfClass("Humanoid") then
                    -- проверяем, что это НЕ игрок
                    local isPlayerCharacter = false
                    for _, player in ipairs(Players:GetPlayers()) do
                        if player.Character == npc then
                            isPlayerCharacter = true
                            break
                        end
                    end

                    if not isPlayerCharacter then
                        local highlight = npc:FindFirstChild("NPCESP")
                        if not highlight then
                            highlight = Instance.new("Highlight")
                            highlight.Name = "NPCESP"
                            highlight.FillColor = Color3.fromRGB(255, 0, 0) -- красный
                            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                            highlight.OutlineTransparency = 0
                            highlight.FillTransparency = 0.3
                            highlight.Parent = npc
                        end
                    else
                        -- если это игрок, удаляем ESP
                        local existing = npc:FindFirstChild("NPCESP")
                        if existing then existing:Destroy() end
                    end
                end
            end
        end

        if ESPEnabled then
            task.spawn(function()
                while ESPEnabled do
                    applyNPCESP()
                    task.wait(1)
                end
            end)
        else
            applyNPCESP() -- удаление при выключении
        end
    end
})

local Workspace = game:GetService("Workspace")
local ESPEnabled = false

ESP:Toggle({
    Title = "Esp Generators",
    Default = false,
    Callback = function(Value)
        ESPEnabled = Value

        local function applyGeneratorESP()
            if not ESPEnabled then
                -- удаляем все подсветки при выключении
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj:IsA("Highlight") and obj.Name == "GeneratorESP" then
                        obj:Destroy()
                    end
                end
                return
            end

            for _, gen in ipairs(Workspace:GetDescendants()) do
                if gen:IsA("Model") and gen.Name == "Generator" then
                    local highlight = gen:FindFirstChild("GeneratorESP")
                    if not highlight then
                        highlight = Instance.new("Highlight")
                        highlight.Name = "GeneratorESP"
                        highlight.FillColor = Color3.fromRGB(128, 0, 128) -- purple
                        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                        highlight.OutlineTransparency = 0
                        highlight.FillTransparency = 0.3
                        highlight.Parent = gen
                    end
                end
            end
        end

        if ESPEnabled then
            task.spawn(function()
                while ESPEnabled do
                    applyGeneratorESP()
                    task.wait(1)
                end
            end)
        else
            applyGeneratorESP() -- удаление при выключении
        end
    end
})

-- INFO
Info:Paragraph({
    Title = "🇬🇧",
    Desc = "Hi, thank you for using our script, If you want to know about script updates or news, join our Discord channel!"
})
Info:Paragraph({
    Title = "🇷🇺",
    Desc = "Привет, спасибо что пользуетесь Нашим скриптом, если хотите знать про обновление скрипта или новости то присоединяйтесь к Нашему Discord каналу!"
})

Info:Button({
    Title = "Наш Discord сервер!",
    Color = Color3.fromRGB(128,0,255),
    Callback = function()
        setclipboard("https://discord.gg/szeNZ5HqF")
    end
})
