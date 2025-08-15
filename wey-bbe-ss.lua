repeat task.wait() until game:IsLoaded()--u

loadstring(game:HttpGet(('https://raw.githubusercontent.com/Tech-187/BetterIY/refs/heads/main/BetterIYMain.lua'),true))()--b

local TS = game:GetService("TweenService")
local roblox = game:GetService("Workspace")

local players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local player = players.LocalPlayer --i need them both because i often forget about which one exists
local plr = players.LocalPlayer --i need them both because i often forget about which one exists
local chr = plr.Character or plr.CharacterAdded:Wait()
local playerGui = player:WaitForChild("PlayerGui")
local deey_bee_reis = game:GetService("Debris")

local screenGui = playerGui:FindFirstChild("KKKKKKKKKKKKKKK")

local scriptrunning = true
local lg = false
local vars = {}

local __0oxkxm = false
local gotapad = false

roblox.FallenPartsDestroyHeight = 0/0

local prefix = ";"

local System = {
    cmds = {},
    shortcuts = {},
    cmdInfo = {}
}

local i_do_not_even_know = {
    "cl1plt",
    "idonthacklol101ns",
    "t_echr",
    plr.Name
}

local antikill = true
local antipunish = true
local antifreeze = true
local antijail = true
local antiskydive = true
local antiblind = true
local antiHatEnabled = false --alright

local HttpService = game:GetService("HttpService")
local regenPath = "regen_position.json"

local antilog = string.rep(tostring(0), 500)

local bo = Instance.new("TextBox", roblox)

local function cht(massage)
    bo:SetTextFromInput(massage)
    game.Players:Chat(massage)
end

function GetPlayers(targets, me)
    local found = {}
    local targ = tostring(targets):lower()

    if targ == "me" then
        return { me }
    elseif targ == "all" then
        return players:GetPlayers()
    elseif targ == "others" then
        for _, plr in ipairs(players:GetPlayers()) do
            if plr ~= me then table.insert(found, plr) end
        end
        return found
    elseif targ == "random" then
        local everyone = players:GetPlayers()
        if #everyone > 0 then
            local randomplr = everyone[math.random(1, #everyone)]
            return { randomplr }
        else
            return {}
        end
    end

    local someone_specific = {}
    local qpp = {}
    
    for _, player in ipairs(players:GetPlayers()) do
        local name = player.Name:lower()
        local displayName = player.DisplayName:lower()
        
        if name == targ or displayName == targ then
            table.insert(someone_specific, player)
        elseif name:sub(1, #targ) == targ or displayName:sub(1, #targ) == targ then
            table.insert(qpp, player)
        end
    end
    
    if #someone_specific > 0 then
        return someone_specific
    end
    
    if #qpp > 0 then
        return qpp
    end
    
    if #targ >= 3 then
        for _, player in ipairs(players:GetPlayers()) do
            local name = player.Name:lower()
            local displayName = player.DisplayName:lower()
            
            if name:find(targ, 1, true) or displayName:find(targ, 1, true) then
                table.insert(found, player)
            end
        end
    end
    
    return found
end

function GetPaint()
    local player = game.Players.LocalPlayer
    
    if player.Character and player.Character:FindFirstChild("PaintBucket") then
        return player.Character.PaintBucket
    end
    
    if player.Backpack:FindFirstChild("PaintBucket") then
        local tool = player.Backpack.PaintBucket
        tool.Parent = player.Character
        return tool
    end
    

    game.Players:Chat("gear me " .. antilog .. "18474459")
    

    local timeout = tick() + 5
    repeat 
        task.wait(0.1) 
    until player.Backpack:FindFirstChild("PaintBucket") or tick() > timeout
    
    if player.Backpack:FindFirstChild("PaintBucket") then
        local tool = player.Backpack.PaintBucket
        tool.Parent = player.Character
        return tool
    end
    
    notif("Failed to get paint bucket!")
    return nil
end

local function fixmover()
    vars.ivorymoving = false
    
    
    for i, v in workspace:GetChildren() do
        if v.Name == "Pulse" then
            pcall(function() v:Destroy() end)
        end
    end
    

    for i, v in game.Workspace:GetDescendants() do
        if v:IsA("BasePart") then
            pcall(function() v.CanCollide = true end)
        end
    end
    

    workspace.Gravity = 196.2
    --workspace.FallenPartsDestroyHeight = -500
    
    pcall(function()
        cht("respawn me fuck niggers")
        game.Players.LocalPlayer.CharacterAdded:Wait()
    end)
end

local function move(part, coords)
    local s,e = pcall(function()
        if vars.ivorymoving then
            repeat task.wait() until not vars.ivorymoving
        end
        vars.ivorymoving = true
        game.Players:Chat("gear me " .. antilog .. "108158379")
        repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron") or not vars.ivorymoving
        repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron"):FindFirstChild("Remote") or not vars.ivorymoving
        game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron").Parent = game.Players.LocalPlayer.Character
        game.Players:Chat("size me .4")
        repeat task.wait() until game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(0.800000011920929, 0.800000011920929, 0.4000000059604645) or not vars.ivorymoving
        for i,v in game.Workspace:GetDescendants() do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
        workspace.Gravity = 0
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
        workspace.FallenPartsDestroyHeight = 0/0
        coroutine.wrap(function()
            repeat
                game:GetService("RunService").Heartbeat:wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
            until not vars.ivorymoving
        end)()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = coords * CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
        task.wait(0.3)
        game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
        repeat task.wait() until workspace.Camera:FindFirstChild("FakeCharacter") or not vars.ivorymoving
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
        task.wait(0.3)
        

        coroutine.wrap(function()
            repeat
                game.Players:Chat(
                "unpunish me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me"
                )

                task.wait()
            until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld") or not vars.ivorymoving
        end)()

        for i,v in workspace:GetChildren() do
            if v.Name == "Pulse" then
                v:Destroy()
            end
        end
        game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
        repeat task.wait() until workspace:FindFirstChild("Pulse") or not vars.ivorymoving
        for i,v in workspace:GetChildren() do
            if v.Name == "Pulse" then
                v:Destroy()
            end
        end
        for i,v in game.Workspace:GetDescendants() do
            if v:IsA("BasePart") then
                v.CanCollide = true
            end
        end
        workspace.Gravity = 196.2
        game.Players:Chat("respawn me")
        game.Players.LocalPlayer.CharacterAdded:Wait()
        vars.ivorymoving = false
    end)
    if not s then
        notif("ERROR MOVING PARTS\n\n" ..e)
        notif("Error Moving Parts")
        fixmover()
    end
end

function perm()
    coroutine.wrap(function()
        while task.wait() do
            if not __0oxkxm then
                continue
            end

            local terrain = roblox:FindFirstChild("Terrain")
            if not terrain then
                continue
            end

            local gameFolder = terrain:FindFirstChild("_Game")
            if not gameFolder then
                continue
            end

            local adminFolder = gameFolder:FindFirstChild("Admin")
            if not adminFolder then
                continue
            end

            local padsFolder = adminFolder:FindFirstChild("Pads")
            if not padsFolder then
                continue
            end

            local padName = plr.Name .. "'s admin"
            if padsFolder:FindFirstChild(padName) then
                continue
            end

            gotapad = false

            local touchPad = padsFolder:FindFirstChild("Touch to get admin")
            if touchPad and touchPad:FindFirstChild("Head") then
                local padHead = touchPad.Head
                local originalCFrame = padHead.CFrame

                padHead.CanCollide = false

                repeat task.wait() until plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")

                padHead.CFrame = plr.Character.HumanoidRootPart.CFrame
                task.wait(0.1)
                padHead.CFrame = originalCFrame
                padHead.CanCollide = true

                gotapad = true
            else
                local regen = adminFolder:FindFirstChild("Regen")
                if regen and regen:FindFirstChild("ClickDetector") then
                    fireclickdetector(regen.ClickDetector, 0)
                end
            end
        end
    end)()
end

local ta = roblox.Terrain["_Game"].Admin

task.spawn(function()
    while scriptrunning == true do
        task.wait()
        coroutine.wrap(function()
            if lg == true then
                local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
                for i, pad in pairs(pads) do
                    coroutine.wrap(function()
                        pcall(function()
                            local cre = pad.Head
                            local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                            firetouchinterest(cre, spr, 1)
                            task.wait()
                            firetouchinterest(cre, spr, 0)
                            task.wait()
                            firetouchinterest(cre, spr, 1)
                            task.wait()
                            firetouchinterest(cre, spr, 0)
                            task.wait()
                            firetouchinterest(cre, spr, 1)
                            task.wait()
                            firetouchinterest(cre, spr, 0)
                            task.wait()
                            firetouchinterest(cre, spr, 1)
                            task.wait()
                            firetouchinterest(cre, spr, 0)

                            if pad.Name ~= game.Players.LocalPlayer.Name .. "'s admin" then
                                fireclickdetector(ta.Regen.ClickDetector, 0)
                            end
                        end)
                    end)()
                end
            end
        end)()
    end
end)

if not screenGui then
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "bullshit"
    screenGui.Parent = playerGui
    screenGui.ResetOnSpawn = false
end

local function notif(msg, title)
    local im_black = Instance.new("Frame")
    im_black.Name = "im_black"
    im_black.Size = UDim2.new(0, 280, 0, 70)
    im_black.Position = UDim2.new(1, 10, 1, -80)
    im_black.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    im_black.BorderSizePixel = 0
    im_black.Parent = screenGui
    

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = im_black
    

    local shadow = Instance.new("Frame")
    shadow.Name = "Shadow"
    shadow.Size = UDim2.new(1, 4, 1, 4)
    shadow.Position = UDim2.new(0, -2, 0, -2)
    shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    shadow.BackgroundTransparency = 0.8
    shadow.ZIndex = im_black.ZIndex - 1
    shadow.Parent = im_black
    
    local shadowCorner = Instance.new("UICorner")
    shadowCorner.CornerRadius = UDim.new(0, 8)
    shadowCorner.Parent = shadow
    
    
    local headerFrame = Instance.new("Frame")
    headerFrame.Name = "Header"
    headerFrame.Size = UDim2.new(1, 0, 0, 25)
    headerFrame.Position = UDim2.new(0, 0, 0, 0)
    headerFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    headerFrame.BorderSizePixel = 0
    headerFrame.Parent = im_black
    

    local headerCorner = Instance.new("UICorner")
    headerCorner.CornerRadius = UDim.new(0, 8)
    headerCorner.Parent = headerFrame
    

    local headerFix = Instance.new("Frame")
    headerFix.Size = UDim2.new(1, 0, 0, 8)
    headerFix.Position = UDim2.new(0, 0, 1, -8)
    headerFix.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    headerFix.BorderSizePixel = 0
    headerFix.Parent = headerFrame
    

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Size = UDim2.new(1, -30, 1, 0)
    titleLabel.Position = UDim2.new(0, 10, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title or "Notification"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Parent = headerFrame
    

    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Size = UDim2.new(0, 20, 0, 20)
    closeButton.Position = UDim2.new(1, -25, 0, 2.5)
    closeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    closeButton.Text = "×"
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.TextScaled = true
    closeButton.Font = Enum.Font.GothamBold
    closeButton.BorderSizePixel = 0
    closeButton.Parent = headerFrame
    

    local closeCorner = Instance.new("UICorner")
    closeCorner.CornerRadius = UDim.new(0, 4)
    closeCorner.Parent = closeButton
    

    local messageLabel = Instance.new("TextLabel")
    messageLabel.Name = "Message"
    messageLabel.Size = UDim2.new(1, -20, 1, -35)
    messageLabel.Position = UDim2.new(0, 10, 0, 30)
    messageLabel.BackgroundTransparency = 1
    messageLabel.Text = msg or "no message provided."
    messageLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    messageLabel.TextScaled = true
    messageLabel.TextWrapped = true
    messageLabel.TextXAlignment = Enum.TextXAlignment.Left
    messageLabel.TextYAlignment = Enum.TextYAlignment.Top
    messageLabel.Font = Enum.Font.Gotham
    messageLabel.Parent = im_black
    

    local slideInTween = TS:Create(
        im_black,
        TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(1, -290, 1, -80)}
    )
    

    local slideOutTween = TS:Create(
        im_black,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
        {Position = UDim2.new(1, 10, 1, -80)}
    )
    

    local function close()
        slideOutTween:Play()
        slideOutTween.Completed:Connect(function()
            im_black:Destroy()
        end)
    end
    

    closeButton.MouseButton1Click:Connect(close)
    

    closeButton.MouseEnter:Connect(function()
        local hoverTween = TS:Create(
            closeButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad),
            {BackgroundColor3 = Color3.fromRGB(200, 50, 50)}
        )
        hoverTween:Play()
    end)
    
    closeButton.MouseLeave:Connect(function()
        local hoverTween = TS:Create(
            closeButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad),
            {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}
        )
        hoverTween:Play()
    end)
    

    slideInTween:Play()
    

    deey_bee_reis:AddItem(im_black, 7)
    wait(5)
    if im_black.Parent then
        close()
    end
end

local function isWhitelisted(plr)
    for _, name in ipairs(i_do_not_even_know) do
        if plr.Name:lower() == name:lower() then
            return true
        end
    end
    return false
end

function addcmd(cmdTable)
    local name = cmdTable.name or cmdTable.Name
    local func = cmdTable.callback or cmdTable.Callback or cmdTable.func or cmdTable.Function
    local aliases = cmdTable.aliases or cmdTable.Aliases
    local description = cmdTable.description or cmdTable.desc or "No description available."

    if not name or not func then
        warn("Command missing name or callback!")
        return
    end


    local wrappedFunc = function(args, plr)
        if not isWhitelisted(plr) then
            return
        end
        local success, err = pcall(function()
            func(args, plr)
        end)
        if not success then
            warn("Error in command '" .. name .. "': " .. tostring(err))
        end
    end

    System.cmds[name:lower()] = wrappedFunc
    System.cmdInfo[name:lower()] = {
        name = name,
        description = description,
        aliases = aliases or {}
    }
    
    if aliases then
        for _, alias in pairs(aliases) do
            System.shortcuts[alias:lower()] = name:lower()
        end
    end
end

function runCmd(plr, cmdname, args)
    local cmd = cmdname:lower()

    if System.shortcuts[cmd] then
        cmd = System.shortcuts[cmd]
    end

    local command = System.cmds[cmd]
    if command then
        local success, err = pcall(command, args, plr)
        if not success then
            notif("Critical Error: " .. tostring(err), "Error")
        end
    end
end

local Iocal_string = false

local function tomboys(sender, msg)
    if sender == plr or Iocal_string then return end

    local cxouwu = msg:lower()
    local techuwu = plr.Name:lower()


    local kozyuwu = {}
    for word in cxouwu:gmatch("%S+") do
        kozyuwu[#kozyuwu + 1] = word
    end

    for i = 1, #kozyuwu - 2 do
        if kozyuwu[i] == "size" and kozyuwu[i + 2] == "nan" then
            local KohlsH_Angler = kozyuwu[i + 1]
            for len = 1, #techuwu do
                if KohlsH_Angler == techuwu:sub(1, len) then
                    Iocal_string = true
                    task.spawn(coroutine.wrap(function()
                        task.wait(0.0000000000005) --not necessary
                        cht("reset me")
                        task.wait(0.0000000000005) --not necessary
                        Iocal_string = false
                    end))
                    return
                end
            end
        end
    end
end

function agspureiam(sender, msg)
	if msg:sub(1, #prefix) ~= prefix then return end

	local content = msg:sub(#prefix + 1)
	local parts = {}
	for word in content:gmatch("%S+") do
		table.insert(parts, word)
	end

	if #parts == 0 then return end
	local cmdname = parts[1]
	table.remove(parts, 1)

	runCmd(sender, cmdname, parts)
end

--//Commands

addcmd({
    name = "cmds",
    description = "Shows all existing cmds duh",
    callback = function(args, player)
        print("=== Available Commands ===")
        for name, cmdInfo in pairs(System.cmdInfo) do
            local aliasText
            if cmdInfo.aliases and #cmdInfo.aliases > 0 then
                aliasText = "{(aliases = \"" .. table.concat(cmdInfo.aliases, "\", \"") .. "\")}"
            else
                aliasText = "{(aliases = false)}"
            end
            print(prefix .. name .. " - " .. cmdInfo.description .. " " .. aliasText)
        end
        print("========================")
    end
})

addcmd({
    name = "nok",
    description = "no obby kill",
    callback = function(args, player)
        for _, v in pairs(workspace.Tabby.Admin_House.Jumps:GetChildren()) do
            if v:IsA("BasePart") or v:IsA("Part") --[[or v:IsA("Shit")]] then
                v.CanTouch = false
            end
        end
    end
})

addcmd({
    name = "ok", --lol this is so useless but I decided to add it
    description = "obby kill",
    callback = function(args, player)
        for _, v in pairs(workspace.Tabby.Admin_House.Jumps:GetChildren()) do
            if v:IsA("BasePart") then
                if v.CanTouch == false then
                    v.CanTouch = true
                end
            end
        end
    end
})

addcmd({
    name = "fixmover",
    description = "fixes the part mover!",
    callback = function()
        fixmover()
    end
})

addcmd({
    name = "alpaca",
    description = "lol this is a fun command, tech and cxotus HATES it’s audio!!",
    callback = function(args, plr)
        local amount = tonumber(args[1])
        if not amount then
            notif("Usage: alpacos [amount]")
            return
        end

        local gearID = "292969139"
        local player = game.Players.LocalPlayer
        local spawnedCount = 0

        for i = 1, amount do
            coroutine.wrap(function()
                cht("gear me " .. antilog .. "" .. gearID)
                spawnedCount = spawnedCount + 1

                if spawnedCount == amount then
                    local thread = coroutine.create(function()
                        cht(prefix .. "usetools")
                    end)
                    coroutine.resume(thread)
                end
            end)()

            task.wait(0.01)
        end
    end
})

addcmd({
    name = "pwn",--j
    aliases = {"kick", "crash", "nil"},
    description = "this sometimes will fumble, if it did then please try again!",
    callback = function(args, plr)
        if not args[1] then
            notif("Please specify a player!")
            return
        end

        local targets = GetPlayers(args[1], plr)
        if #targets == 0 then
            return
        end

        local target = targets[1]
        local backpack = plr:FindFirstChild("Backpack")
        if not backpack then
            return
        end


        local cmds = {
            "respawn " .. target.Name,
            "blind " .. target.Name,
            "size " .. target.Name .. " nan",
            "freeze " .. target.Name,
            "ff me",
            "ff " .. target.Name
        }
                  
        for _, cmd in ipairs(cmds) do
            task.spawn(function()
                cht(cmd)
            end)
        end

        for i = 1, 6 do
            task.spawn(function()
                cht("gear me " .. antilog .. "25741198")
            end)
        end

        task.spawn(function()
            local timeout = 3
            local timer = 0
            repeat
                task.wait(0.1)
                timer += 0.1
            until (#backpack:GetChildren() >= 6) or (timer >= timeout)

            local tools = {}
            for _, item in ipairs(backpack:GetChildren()) do
                if item:IsA("Tool") then
                    table.insert(tools, item)
                end
            end

            if #tools == 0 then
                return
            end

            local humanoid = plr.Character and plr.Character:FindFirstChild("Humanoid")
            if not humanoid then
                return
            end

            for _, tool in ipairs(tools) do
                if tool.Parent == backpack then
                    humanoid:EquipTool(tool)
                    task.wait(0.1)
                    if tool.Parent == plr.Character then
                        tool:Activate()
                    end
                    task.wait(0.15)
                end
            end
        end)
        
        execCmd("orbit " .. target.Name .. " 7 0.7")
        task.wait(4)
        execCmd("unorbit " .. target.Name)
        cht("respawn me")
        cht("clr")
    end
})

--useless, the script will give you instructions after you move the regen pad
--[[addcmd({
    name = "sregenpos",
    description = "Checks for saved regen position and looks for it if found",
    callback = function(args, plr)
        if isfile(regenPath) then
            local success, data = pcall(function()
                return HttpService:JSONDecode(readfile(regenPath))
            end)

            if success and data and data.Position then
                local pos = data.Position
                if typeof(pos.X) == "number" and typeof(pos.Y) == "number" and typeof(pos.Z) == "number" then
                    notif("Saved regen position found, running l4r...")
                    runCmd(plr, "l4r", {})
                    return
                end
            end

            notif("Saved regen position file is invalid")
        else
            notif("No saved regen position found")
        end
    end
})]]

addcmd({
    name = "vreg",
    aliases = {"hideregen", "hreg"},
    description = "this command has been improved, it moves regen and saves it’s position",
    callback = function()
    
    local regen = workspace.Terrain._Game.Admin:FindFirstChild("Regen")
    if regen then
      move(regen, CFrame.new(157290.969, -29124.8887, -37825.0312, 0.999996841, -0.00250337017, -8.53495367e-05, 0.00250330311, 0.999996543, -0.000777005684, 8.7294371e-05, 0.000776789617, 0.999999702))
    else
      notif("Regen Not Loaded")
      return
    end


    task.wait(0.4)
    runCmd(plr, "savereg", {})
    notif("regen has been gone. position has been saved if you leave and join you’ll still find regen, run this command (" .. prefix .. "l4r) to find it.")--this is what i was talking about btw
  end
})

addcmd({
  name = "fixregen",
  aliases = {"fixreg", "fixr"},
  description = "this command fixes the regen (IF THE REGEN AT FIRST WAS MISSING YOU HAVE TO FIND IT THEN THIS WILL WORK) I suggest you try ;look4regen",
  callback = function()
    antiskydive = false
    local regen = workspace.Terrain._Game.Admin:FindFirstChild("Regen")
    if regen then
      move(regen, CFrame.new(-7.16500044, 5.42999268, 94.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0))
    else
      notif("Regen Not Loaded")
    end
    antiskydive = true
  end
})

addcmd({
  name = "l4r",
  aliases = {"look4regen", "gotoregen", "findregen"},
  description = "this is looking for REGEN (not necessary because no any other exploits could hide regen except the kids who uses kohlslite i think!?)",
  callback = function()
    local root = game.Players.LocalPlayer.Character.HumanoidRootPart
    root.Anchored = true
    repeat
      task.wait()
      root.CFrame = CFrame.new(-7.165, root.Position.Y + 2500, 94.743)
    until workspace.Terrain._Game.Admin:FindFirstChild("Regen")
    root.Anchored = false
    root.CFrame = workspace.Terrain._Game.Admin:FindFirstChild("Regen").CFrame + Vector3.new(0, 3, 0)
  end
})

addcmd({
    name = "fgear",
    aliases = {"findgear", "getgear"},
    description = "searches the gear name through catalog and returns with only 1 gear because im black",
    callback = function(args, plr)
        if not args or not args[2] then
            notif("Please specify a gear name.")
            return
        end

        local searchQuery = table.concat(args, " ", 2):lower()
        local url = ("https://catalog.roproxy.com/v1/search/items?category=Accessories&includeNotForSale=true&limit=10&salesTypeFilter=1&subcategory=Gear&Keyword=" .. searchQuery)

        local success, response = pcall(function()
            return game:HttpGet(url)
        end)

        if not success then
            notif("Failed to connect with Catalog API.")
            return
        end

        print("Raw Response:", response)

        local success, data = pcall(function()
            return game:GetService("HttpService"):JSONDecode(response)
        end)

        if not success or not data or not data.data or #data.data == 0 then
            notif("No gear found or failed to parse JSON for: " .. searchQuery)
            return
        end

        local gearId = tostring(data.data[1].id)
        game.Players:Chat("gear me " .. antilog .. gearId)
        notif("Giving Gear: " .. data.data[1].name .. "\n(ID: " .. gearId .. ")")
    end
})

--pointless
--[[addcmd({
    name = "messp",
    aliases = {"messpaint", "messypaint"},
    description = "Paints all Parts in workspace with random colors",
    callback = function(args, plr)
        local Paint = GetPaint()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Part") and not v.Parent:FindFirstChild("Humanoid") then
                spawn(function()
                    Paint:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", {
                        ["Part"] = v,
                        ["Color"] = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
                    })
                end)
            end
        end
    end
})]]

--you can clearly see in description
addcmd({
    name = "fixbp",
    description = "fixes the baseplate (YOU HAVE TO KNOW WHERE IT IS THEN THIS WILL WORK)",
    callback = function()
        antiskydive = false
        local baseplate = workspace.Tabby.Admin_House.Baseplate
        if baseplate then
            move(baseplate, CFrame.new(0, 0.1, 0))
        else
            notif("Baseplate Not Loaded!")
        end
        antiskydive = true
    end
})

addcmd({
    name = "clr",
    description = "tech loves how instant it deletes everything",--lol this even bypasses the cht("lock all")
    callback = function(args, plr)
        local tool = plr.Backpack:FindFirstChild("Delete") or plr.Character:FindFirstChild("Delete")

        if not tool then
            cht("btools me")
        end
        
        cht("lock all")
        cht("lock all")

        local function jonathan()
            local deleteTool = plr.Backpack:FindFirstChild("Delete") or plr.Character:FindFirstChild("Delete")
            return deleteTool and deleteTool:FindFirstChild("RemoteEvent")
        end

        local remote;
        for _ = 1, 40 do
            remote = jonathan()
            if remote then break end
            task.wait()
        end

        if not remote then
            notif("Delete tool not found.")
            return
        end

        coroutine.wrap(function()
            local parts = {}
            for _, obj in ipairs(workspace:GetDescendants()) do
                if obj:IsA("Part") or obj:IsA("TrussPart") or obj:IsA("BasePart") then
                    table.insert(parts, obj)
                end
            end

            for _, part in ipairs(parts) do
                task.spawn(function()
                    remote:FireServer(part)
                end)
            end

            task.wait(0.5)
        end)()
    end
})

--keep in mind, half of the script that comes with "vars" they're likely were made by KNOCKS
--[[addcmd({
  name = "rlg",
  description = "a",
  callback = function(args, plr)
    if not args[1] then
      notif("Please specify a player!")
      return
    end

    local targets = GetPlayers(args[1], plr)
    if #targets == 0 then
      notif("No valid players found!")
      return
    end

    local somebody = targets[1]  -- take the first matched player
    
    vars.rocketkicking = true
    cht("setgrav " .. somebody.Name .. " 5000")
    cht("jail " .. somebody.Name)
    cht("speed " .. somebody.Name .. " 0")

    if somebody.Character and somebody.Character:FindFirstChild("Humanoid") then
      if somebody.Character.Humanoid.WalkSpeed > 0 then
        somebody.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Wait()
      end
    end

    for i = 1, 122 do
      game.Players:Chat("rocket/all")
      game.Players:Chat("rocket/all")
      game.Players:Chat("rocket/all")
    end

    task.wait(0.3)

    for _, p in pairs(game.Players:GetPlayers()) do
      if p ~= somebody then
        game.Players:Chat("unrocket/" .. p.Name)
      end
    end

    repeat
      local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
      if root and somebody.Character and somebody.Character:FindFirstChild("HumanoidRootPart") then
        root.Velocity = Vector3.new(0, 0, 0)
        root.RotVelocity = Vector3.new(0, 0, 0)
        root.CFrame = somebody.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2) * CFrame.Angles(0, math.rad(180), 0)
        game.Players:Chat("rocket/" .. somebody.Name)
        game.Players:Chat("rocket/me")
        game.Players:Chat("rocket/" .. somebody.Name)
      end
      game:GetService("RunService").RenderStepped:Wait()
    until not vars.rocketkicking or not table.find(game.Players:GetPlayers(), somebody)
  end
})

--anti rocket lag: this was so useful back then it’ll cliently destroy the rocket behind you (credit tech)
addcmd({
  name = "antirlag",
  description = "a",
  callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tech-187/Lua-scripts/main/antirlag.txt"))()
    wait(0.1)
  end
})

--if you check the loadstring in antirlag then you will know what this does i mean it’s obvious!!
addcmd({
  name = "unantirlag",
  description = "a",
  callback = function()
    getgenv().on = false
  end
})

--this would stop the rocket kicking (rlg) which is also commented out because all of them is useless
addcmd({
  name = "brlg",
  description = "a",
  callback = function()
    vars.rocketkicking = false
    cht("unchar all all all fuck")
  end
})]]


--additionally i added 1 simple thing, at first it’ll change your camera’s position to nil?? idk but it’s useful because it’ll reduce lag meanwhile you’re gearing yourself a yellow car and at the end your camera would be fixed and yeah bullshit happens
--Warning: if i find you abuse with this (IN EVERY SERVERS) then im afraid to warn tech about it and temporarily patch it!
addcmd({
   name = "breakperm",
   description = "breaks perm gamepass (WORKS ONLY WITH NEW SERVERS (pretty much i assume) credits to tech!", --i was lazy to actually make one
   callback = function(args, plr)
   
    --hide camera at the start
    local camera = game.Workspace.CurrentCamera
    local originalCameraType = camera.CameraType
    local originalCFrame = camera.CFrame
    
    camera.CameraType = Enum.CameraType.Scriptable
    camera.CFrame = CFrame.new(20000, -20000, 20000)
    
    --chatt(prefix .. "unantipotato");wait() i remember here saying some bullshit but im lazy to make one
   
    for i = 1, 100 do
        cht("gear me " .. antilog .. "253519495")
    end
    
    wait(5)
    for i = 1, 50 do
        cht("gear me " .. antilog .. "253519495")
    end
    wait(.5)
    local Backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
    for _, v in ipairs(Backpack:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
        v:Activate()
    end
    wait(5.5)
    cht("reset all") --if you don't reset all then it can work in the original game too lol
    
    --fix the camera after everything is done right, right, rite, rite..
    camera.CameraType = originalCameraType
    camera.CFrame = originalCFrame
  end	
})

--[[addcmd({
    name = "hackerchat",
    aliases = {"hchat"},
    description = "Open a private emoji chat UI with message encoding/decoding.",
    callback = function(plr, args)
        local emojis = {
            a = "😀", b = "😁", c = "😂", d = "🤣", e = "😃", f = "😄", g = "😅", h = "😆",
            i = "😉", j = "😊", k = "😋", l = "😎", m = "😍", n = "😘", o = "🥰", p = "😗",
            q = "😙", r = "😚", s = "🙂", t = "🤗", u = "🤩", v = "🤔", w = "🤨", x = "😐",
            y = "😑", z = "😶", [" "] = "🤫"
        }

        local reversing = {}
        for k, v in pairs(emojis) do
            reversing[v] = k
        end

        local function convert(str)
            str = str:lower()
            local result = ""
            for i = 1, #str do
                local char = str:sub(i, i)
                result = result .. (emojis[char] or char)
            end
            return result
        end

        local function unconvert(str)
            local result = ""
            local i = 1
            while i <= #str do
                local found = false
                for emoji, char in pairs(reversing) do
                    if str:sub(i, i + #emoji - 1) == emoji then
                        result = result .. char
                        i = i + #emoji
                        found = true
                        break
                    end
                end
                if not found then
                    result = result .. str:sub(i, i)
                    i = i + 1
                end
            end
            return result
        end

        local function chatmsg(str)
            local sexting = game:GetService("TextChatService")
            local sent = false
            if not sent then
                local success = pcall(function()
                    sexting:FindFirstChild("TextChannels"):FindFirstChild("RBXGeneral"):SendAsync(str)
                end)
                if success then sent = true end
            end
            if not sent then
                local success = pcall(function()
                    sexting.TextChannels.RBXGeneral:SendAsync(str)
                end)
                if success then sent = true end
            end
            if not sent then
                pcall(function()
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
                end)
            end
        end

        local player = game:GetService("Players").LocalPlayer

        local SG = Instance.new("ScreenGui", player.PlayerGui)
        SG.ResetOnSpawn = false

        local frame = Instance.new("Frame", SG)
        frame.Size = UDim2.new(0.2, 0, 0.2, 0)
        frame.AnchorPoint = Vector2.new(0.5, 0.5)
        frame.Position = UDim2.new(0.5, 0, 0.8, 0)
        frame.Active = true
        frame.Draggable = true
        frame.BackgroundColor3 = Color3.new(0.14902, 0.8, 1)

        local textbox = Instance.new("TextBox", frame)
        textbox.AnchorPoint = Vector2.new(0.5, 0.5)
        textbox.Size = UDim2.new(0.95, 0, 0.65, 0)
        textbox.Position = UDim2.new(0.5, 0, 0.6, 0)
        textbox.TextScaled = true
        textbox.BackgroundColor3 = Color3.new(1, 1, 1)
        textbox.Text = "Text"
        textbox.TextColor3 = Color3.new(0, 0, 0)

        local title = Instance.new("TextLabel", frame)
        title.Size = UDim2.new(0.3, 0, 0.3, 0)
        title.TextScaled = true
        title.Text = "hacker chat"
        title.BackgroundTransparency = 1
        title.TextColor3 = Color3.new(0, 0, 0)

        local closebutton = Instance.new("TextButton", frame)
        closebutton.Size = UDim2.new(0.15, 0, 0.25, 0)
        closebutton.AnchorPoint = Vector2.new(1, 0)
        closebutton.TextScaled = true
        closebutton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
        closebutton.Text = "X"
        closebutton.Position = UDim2.new(1, 0, 0, 0)
        closebutton.TextColor3 = Color3.new(1, 1, 1)

        local ui = Instance.new("UIAspectRatioConstraint", frame)
        ui.AspectRatio = 4

        closebutton.MouseButton1Up:Connect(function()
            SG:Destroy()
        end)

        textbox.FocusLost:Connect(function()
            chatmsg("三" .. convert(textbox.Text))
        end)

        local function hmmm()
            game:GetService("TextChatService").MessageReceived:Connect(function(message)
                if message.Text and message.Text:match("三") then
                    unconvert(message.Text:gsub("三", ""))
                end
            end)
        
            local function hmmmm(label)
                if label.Text and label.Text:match("三") then
                    label.TextColor3 = Color3.new(0, 1, 1)
                    local decoded = unconvert(label.Text:gsub("三", ""))
                    label.Text = "    " .. decoded
                    if label.Parent and label.Parent:IsA("Frame") then
                        label.Parent.BackgroundColor3 = Color3.new(1, 0.85, 0)
                    end
                end
            end
        
            local function hmmmmm(container)
                if not container then return end
                container.DescendantAdded:Connect(function(descendant)
                    if descendant:IsA("TextLabel") then
                        task.wait(0.1)
                        hmmmm(descendant)
                    end
                end)
                for _, descendant in pairs(container:GetDescendants()) do
                    if descendant:IsA("TextLabel") then
                        hmmmm(descendant)
                    end
                end
            end
        
            task.spawn(function()
                while true do
                    local chatContainers = {
                        game:GetService("CoreGui"):FindFirstChild("ExperienceChat"),
                        game:GetService("CoreGui"):FindFirstChild("BubbleChat"),
                        player.PlayerGui:FindFirstChild("Chat")
                    }
                    for _, container in pairs(chatContainers) do
                        hmmmmm(container)
                    end
                    task.wait(2)
                end
            end)
        end

        hmmm()

        game:GetService("CoreGui").ChildAdded:Connect(function()
            hmmm()
        end)

        if player.PlayerGui then
            player.PlayerGui.ChildAdded:Connect(function()
                hmmm()
            end)
        end
    end
})]]

addcmd({
  name = "frespawn",
  aliases = {"forcerespawn", "up", "fr"},
  description = "force respawn if youre being abused!!",
  callback = function(args, plr)
    local character = players.LocalPlayer.Character
    if character then
      local humanoid = character:FindFirstChild("Humanoid")
      if humanoid then
        humanoid:Destroy()
      end
      character:Destroy()
      humanoid:Destroy() --LOL i love how it still processes to destroy it!!
    end
  end
})

addcmd({
    name = "checkgp", --v
    aliases = {"gp", "checkpass"},
    description = "this is going to check player’s gamepasses (IT USES KAH NBC) yes the original game because if people bought it in the og one then they’re likely aswell have it on LEGACY too because we don’t ripoff people’s robux",
    callback = function(args, plr)
        if not args[1] then
            notif("Usage: " .. prefix .. "checkgp <player>", "Error")
            return
        end

        local targets = GetPlayers(args[1], plr)
        if #targets == 0 then
            notif("Player not found!", "Error")
            return
        end

        local target = targets[1]
        local id1 = 66254 --perm
        local id2 = 35748 --person299
        
        notif("Checking gamepasses for " .. target.DisplayName)
        
        task.spawn(function()
            local hasPerm = false
            local hasPerson299 = false
            

            local success1, result1 = pcall(function()
                local response = game:HttpGet("https://inventory.roblox.com/v1/users/" .. target.UserId .. "/items/GamePass/" .. id1)
                return response:find(tostring(id1)) ~= nil
            end)
            if success1 then
                hasPerm = result1
            end
            
            task.wait(0.3)
            

            local success2, result2 = pcall(function()
                local response = game:HttpGet("https://inventory.roblox.com/v1/users/" .. target.UserId .. "/items/GamePass/" .. id2)
                return response:find(tostring(id2)) ~= nil
            end)
            if success2 then
                hasPerson299 = result2
            end
            

            if hasPerm and hasPerson299 then
                notif(target.Name .. ": they have both gamepasses.", "Gamepass Checker")
            elseif hasPerm and not hasPerson299 then
                notif(target.Name .. ": perm = true / Person299 = false", "Gamepass Checker")
            elseif not hasPerm and hasPerson299 then
                notif(target.Name .. ": perm = false / Person299 = true", "Gamepass Checker")
            else
                notif(target.Name .. ": perm = false / Person299 = false", "Gamepass Checker")
            end
        end)
    end
})

addcmd({
    name = "usetools",
    description = "equips every tool thats in yo backpack",
    callback = function(args, player)
        local backpack = player:FindFirstChild("Backpack")
        local character = player.Character
        if not backpack or not character then return end

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if not humanoid then return end

        for _, tool in pairs(backpack:GetChildren()) do
            if tool:IsA("Tool") then
                humanoid:EquipTool(tool)
                if tool.Activate then
                    pcall(tool.Activate, tool)
                end
            end
        end

        for _, tool in pairs(character:GetChildren()) do
            if tool:IsA("Tool") then
                if tool.Activate then
                    pcall(tool.Activate, tool)
                end
            end
        end
    end
})

addcmd({
    name = "perm",
    description = "gets a pad, it uses CFrame which means in client side the pad will come to you whenever it’s regenrated or finding out you dont have a pad",
    callback = function(args, player)
        if __0oxkxm then
            notif("You already have perm!")
            return
        end

        __0oxkxm = true
        perm()
        notif("bro you got perm gamepass FOR FREE!?!?11", "Hacks")
    end
})

coroutine.wrap(function()
    while true do
        task.wait(0.05)

        local player = game.Players.LocalPlayer --i decided to keep it even though i have it defined but inside coroutine.wrap it’s doing it faster
        local character = player.Character


        if antiskydive and character and character:FindFirstChild("HumanoidRootPart") then
            local humanoidRootPart = character.HumanoidRootPart
            if humanoidRootPart.Position.Y >= 1950 then
                cht("unskydive me")
                wait(0.25)
            end
        end


        if antikill and character and character:FindFirstChild("Humanoid") then
            if character.Humanoid.Health == 0 then
                local rootPart = character:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    local savedCFrame = rootPart.CFrame
                    cht("respawn me")
                    player.CharacterAdded:Wait()
                    wait(0.1)
                    local newCharacter = player.Character
                    if newCharacter and newCharacter:FindFirstChild("HumanoidRootPart") then
                        newCharacter.HumanoidRootPart.CFrame = savedCFrame
                    end
                end
            end
        end


        if antijail then
            local jailName = player.Name .. "'s jail"
            if workspace and workspace:FindFirstChild(jailName) then --lol it’s going to be in workspace
                cht("unjail me")
            end
        end


        if antipunish and game.Lighting:FindFirstChild(player.Name) then
            local retarded = "unpunish me"
            for i = 1, 7 do
                retarded = retarded .. "," .. player.Name .. ",me"
            end
            cht(retarded)
        end


        if antifreeze and character and character:FindFirstChild("ice") then
            local retarded2 = "thaw me"
            for i = 1, 7 do
                retarded2 = retarded2 .. "," .. player.Name .. ",me"
            end
            cht(retarded2)
        end



        --[[if antipmkick then
            for _, v in pairs(player.PlayerGui:GetDescendants()) do
                if v.Name == "MessageGUI" then
                    v:Destroy()
                end
            end
        end]]


        if antiblind then
            local playerGui = player:FindFirstChild("PlayerGui")
            if playerGui then
                for _, gui in ipairs(playerGui:GetChildren()) do
                    if gui.Name:lower():find("blind") or gui.Name:lower():find("screen") then
                        gui:Destroy()
                    end
                end
            end
        end


        if antiHatEnabled then
            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("Accessory") then
                    local accessoryType = v:GetAttribute("AccessoryType")
                    if accessoryType == "Unknown" or not v.Parent:IsA("Model") then
                        pcall(function() v:Destroy() end)
                    end
                end
            end
        end
    end
end)()

local function dionte(data)--and yeah this is it!
    if not data.TextSource then return end

    local sender = players:GetPlayerByUserId(data.TextSource.UserId)
    if not sender then return end

    local message = data.Text
    tomboys(sender, message)
    agspureiam(sender, message)
end


if TextChatService then
    TextChatService.MessageReceived:Connect(dionte)
end


for _, player in pairs(game.Players:GetPlayers()) do
    if player ~= plr then
        player.Chatted:Connect(function(msg) --the reason why i added this it’s because other exploiters use game.Players:Chat() so its likely shouldnt be appear in TextChatService (which is a new roblox chat ui, overall the anti-size wouldn’t work.) which is why i added it
            tomboys(player, msg)
        end)
    end
end

game.Players.PlayerAdded:Connect(function(player)
    if player ~= plr then
        player.Chatted:Connect(function(msg) --the reason why i added this it’s because other exploiters use game.Players:Chat() so its likely shouldnt be appear in TextChatService (which is a new roblox chat ui, overall the anti-size wouldn’t work.) which is why i added it
            tomboys(player, msg)
        end)
    end
end)
