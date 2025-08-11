repeat task.wait() until game:IsLoaded()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/Tech-187/BetterIY/refs/heads/main/BetterIYMain.lua'),true))()

local players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local plr = players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local roblox = game:GetService("Workspace")
local __0oxkxm = false
local gotapad = false
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local player = players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = playerGui:FindFirstChild("KKKKKKKKKKKKKKK")
local debris = game:GetService("Debris")

roblox.FallenPartsDestroyHeight = 0/0 --yes i skidded this 9982929828th time skidding, kinda tough right!?!!!?1?1?1!1!

local prefix = ";" --lol if you aswell load tech’s KAH Legacy Script then try to change this prefix or dont, the reason why im telling you to do it it’s because it’ll confuse you even though it’s not necessary to change it, i mean overall our commands are far away from being the exact same except the “clr” one because yeah lol

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

local antilog = string.rep(tostring(0), 500)

_G.regenpos = nil

_G.CFR = { --credits to damix’s github which he leaked every script sources in KAH i guess!! but the partmover is so ahh!!! so is saving regen!
    CFrame.new(1000000, 1000003, -1000000),
    CFrame.new(1101734, 33651680, -33531784),
    CFrame.new(1000000, -1000003, -1000000),
    CFrame.new(1000000, -1000000, -3),
    CFrame.new(3, -1000000, 1000000),
    CFrame.new(1000000, -3, -1000000),
    CFrame.new(-1000000, -3, 1000000),
    CFrame.new(1000000, 3, 1000000),
    CFrame.new(1000000, 1000003, 1000000),
    CFrame.new(1000000, -1000003, 1000000),
    CFrame.new(454545, 150000, -678678),
    CFrame.new(306712, 420552, 398158),
    CFrame.new(-1000000, 1000003, 1000000),
    CFrame.new(-1000000, 1000003, -1000000),
    CFrame.new(-1000000, -1000003, -1000000),
    CFrame.new(45400, -49860, 56673),
    CFrame.new(56470, -48312, 28578),
    CFrame.new(75304, -49638, 47300),
    CFrame.new(34120, -48830, 30233),
    CFrame.new(77822, -49751, 79116),
    CFrame.new(42682, -29202, 29886),
    CFrame.new(51052, -49558, 34068),
    CFrame.new(-251773, 1000003, 382563),
}

local function cht(message)
    game.Players:Chat(message)
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

function moveObject(trog, dor) --yes i skidded it first time skidding though (overall it’s not a really good part mover but what can i say)
    function equipivory()
        if plr.Backpack:FindFirstChild("IvoryPeriastron") then
            plr.Backpack.IvoryPeriastron.Parent = plr.Character
        else
            if not plr.Character:FindFirstChild("IvoryPeriastron") then
                cht("gear me " .. antilog .. "108158379")
                repeat wait() until plr.Backpack:FindFirstChild("IvoryPeriastron")
                plr.Backpack.IvoryPeriastron.Parent = plr.Character
            end
        end
    end
    equipivory()
    
    if plr.Character:FindFirstChild("IvoryPeriastron") then
        local cf = plr.Character.HumanoidRootPart
        local shouldSetCFrame = true
        local destinationCFrame = dor
        
        spawn(function()
            repeat 
                game:GetService("RunService").RenderStepped:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = destinationCFrame
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
            until not shouldSetCFrame
        end)
        
        wait(0.2)
        shouldSetCFrame = false
        plr.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
        cf.Anchored = false
        local looping = true
        local anchorPart = Instance.new("Part", cf.Parent)
        anchorPart.Anchored = true
        anchorPart.Size = Vector3.new(10,1,10)
        anchorPart.CFrame = (trog.CFrame * CFrame.new(-1*(trog.Size.X/2)-(plr.Character['Torso'].Size.X/2), 0, 0)) * CFrame.new(0,-3.5,0)
        
        spawn(function()
            while true do
                game:GetService('RunService').Heartbeat:wait()
                game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                trog.RotVelocity = Vector3.new(0,0,0)
                trog.Velocity = Vector3.new(0,0,0)
                cf.Velocity = Vector3.new(0,0,0)
                cf.RotVelocity = Vector3.new(0,0,0)
                cf.CFrame = trog.CFrame * CFrame.new(-1*(trog.Size.X/2)-(plr.Character['Torso'].Size.X/2), 0, 0)
                if not looping then break end
            end
        end)
        
        spawn(function() 
            while looping do 
                game:GetService('RunService').Heartbeat:wait() 
                cht('unpunish me me me me me me me me me me me me me me me me me me') 
            end 
        end)
        
        wait(0.3)
        looping = false
        plr.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
        wait(0.5)
        cht("respawn me")
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

if not screenGui then
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "KKKKKKKKKKKKKKK"
    screenGui.Parent = playerGui
    screenGui.ResetOnSpawn = false
end

local function notif(msg, title)
    local notificationFrame = Instance.new("Frame")
    local corner = Instance.new("UICorner")
    local shadow = Instance.new("Frame")
    local shadowCorner = Instance.new("UICorner")
    local messageLabel = Instance.new("TextLabel")
    local closeCorner = Instance.new("UICorner")
    local headerFrame = Instance.new("Frame")
    local headerCorner = Instance.new("UICorner")
    local headerFix = Instance.new("Frame")
    local titleLabel = Instance.new("TextLabel")
    local closeButton = Instance.new("TextButton")
    
    notificationFrame.Name = "NotificationFrame"
    notificationFrame.Size = UDim2.new(0, 280, 0, 70)
    notificationFrame.Position = UDim2.new(1, 10, 1, -80)
    notificationFrame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    notificationFrame.BorderSizePixel = 0
    notificationFrame.Parent = screenGui
    

    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = notificationFrame
    

    shadow.Name = "Shadow"
    shadow.Size = UDim2.new(1, 4, 1, 4)
    shadow.Position = UDim2.new(0, -2, 0, -2)
    shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    shadow.BackgroundTransparency = 0.8
    shadow.ZIndex = notificationFrame.ZIndex - 1
    shadow.Parent = notificationFrame
    

    shadowCorner.CornerRadius = UDim.new(0, 8)
    shadowCorner.Parent = shadow
    

    headerFrame.Name = "Header"
    headerFrame.Size = UDim2.new(1, 0, 0, 25)
    headerFrame.Position = UDim2.new(0, 0, 0, 0)
    headerFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    headerFrame.BorderSizePixel = 0
    headerFrame.Parent = notificationFrame
    

    headerCorner.CornerRadius = UDim.new(0, 8)
    headerCorner.Parent = headerFrame
    

    headerFix.Size = UDim2.new(1, 0, 0, 8)
    headerFix.Position = UDim2.new(0, 0, 1, -8)
    headerFix.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    headerFix.BorderSizePixel = 0
    headerFix.Parent = headerFrame
    

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
    

    closeCorner.CornerRadius = UDim.new(0, 4)
    closeCorner.Parent = closeButton
    

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
    messageLabel.Parent = notificationFrame
    
    local slideInTween = TweenService:Create(
        notificationFrame,
        TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(1, -290, 1, -80)}
    )
    
    local slideOutTween = TweenService:Create(
        notificationFrame,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
        {Position = UDim2.new(1, 10, 1, -80)}
    )
    
    local function close()
        slideOutTween:Play()
        slideOutTween.Completed:Connect(function()
            notificationFrame:Destroy()
        end)
    end
    
    closeButton.MouseButton1Click:Connect(close)
    
    closeButton.MouseEnter:Connect(function()
        local hoverTween = TweenService:Create(
            closeButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad),
            {BackgroundColor3 = Color3.fromRGB(200, 50, 50)}
        )
        hoverTween:Play()
    end)
    
    closeButton.MouseLeave:Connect(function()
        local hoverTween = TweenService:Create(
            closeButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad),
            {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}
        )
        hoverTween:Play()
    end)
    
    slideInTween:Play()
    
    debris:AddItem(notificationFrame, 7)
    task.spawn(function()
        task.wait(5)
        if notificationFrame.Parent then
            close()
        end
    end)
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
    description = "Show all available commands",
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
    name = "ok", --lol this is so useless
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

--[[addcmd({ decided to comment this out because it’s so bad!!
    name = "fixregen",
    description = "Moves Regen pad back to its original position.",
    callback = function(args, plr)
        local regen = workspace.Terrain._Game.Admin:FindFirstChild("Regen")
        if not regen then
            notif("Regen pad not found.")
            return
        end

        local og = CFrame.new(-7.16500044, 5.42999268, 91.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        moveObject(regen, og)
    end
})]]

addcmd({
    name = "pwn",
    description = "black",
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

addcmd({
    name = "moveregen",
    description = "Moves Regen pad to a random far position and saves it.",
    callback = function(args, plr)
        local regen = workspace.Terrain._Game.Admin:FindFirstChild("Regen")
        if not regen then
            notif("Regen pad not found.")
            return
        end

        local pos = _G.CFR[math.random(1, #_G.CFR)]
        _G.regenpos = pos

        moveObject(regen, pos)
    end
})

-- this is so stupid if i have time then im going to fix every commented ones
--[[addcmd({
    name = "gotoregen",
    description = "Teleports you to the saved Regen position.",
    callback = function(args, plr)
        if not _G.regenpos or _G.regenpos == nil then
            notif("No saved position found. Use ;moveregen first!")
            return
        end

        local char = plr.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then
            notif("Character not found.")
            return
        end

        char.HumanoidRootPart.CFrame = _G.regenpos
        notif("Teleported to saved regen position!")
    end
})]]

addcmd({
    name = "clr",
    description = "tech loves how instant it deletes everything",
    callback = function(args, plr)
        local tool = plr.Backpack:FindFirstChild("Delete") or plr.Character:FindFirstChild("Delete")

        if not tool then
            cht("btools me")
        end
        
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
            cht("unlock all")
        end)()
    end
})

addcmd({
   name = "breakperm",
   description = "breaks perm gamepass (WORKS ONLY WITH NEW SERVERS (pretty much i assume)) credits to tech!", --tbf i’d make one but the thing is not im just lazy nor taking much efforts on it, it annoys me because of testing it alot lately and honestly i dont like to annoy the servers or fixing errors and stuff (it just kills my time), while i was testing my version before i’d just be returned a huge lag spike so i stopped making it, im dissatisfied about how it doesn’t work aswell!!
   callback = function(args, plr)
   
   --chatt(prefix .. "unantipotato");wait() this soon will be uncommented cause im also making an anti-potato kick (if you think i already have one which is anti-size then yeah that is true but thats just 1 part of the method to kick people. you see im also making one that likely stops tools or what you call it (gears) Specifically Hot Potato) but not like techs!

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
    cht("reset all") -- if you don't reset all then it can work in the original game too lol
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
      humanoid:Destroy() --LOL still processing to destroy it!!
    end
  end
})

addcmd({
    name = "checkgp", --v
    aliases = {"gp", "checkpass"},
    description = "haha",
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
    description = "a",
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
    description = "a",
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
