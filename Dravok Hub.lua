local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Notification & font settings
WindUI:SetNotificationLower(true)
WindUI:SetFont("rbxassetid://12187365104") -- Replace with actual font asset ID

-- Dark Core Theme
WindUI:AddTheme({
    Name = "Dark Core",
    Accent = "#18181b",
    Dialog = "#18181b",
    Outline = "#FFFFFF",
    Text = "#FFFFFF",
    Placeholder = "#999999",
    Background = "#0e0e10",
    Button = "#52525b",
    Icon = "#a1a1aa",
})

-- Midnight Neon
WindUI:AddTheme({
    Name = "Midnight Neon",
    Accent = "#8B5CF6",
    Dialog = "#1F1B2E",
    Outline = "#C084FC",
    Text = "#F5F3FF",
    Placeholder = "#A78BFA",
    Background = "#120D1C",
    Button = "#6B21A8",
    Icon = "#E9D5FF",
})

-- Cyber Blue
WindUI:AddTheme({
    Name = "Cyber Blue",
    Accent = "#0EA5E9",
    Dialog = "#0F172A",
    Outline = "#38BDF8",
    Text = "#E0F2FE",
    Placeholder = "#7DD3FC",
    Background = "#020617",
    Button = "#0284C7",
    Icon = "#BAE6FD",
})

-- Terminal Green
WindUI:AddTheme({
    Name = "Terminal Green",
    Accent = "#22C55E",
    Dialog = "#111827",
    Outline = "#4ADE80",
    Text = "#D1FAE5",
    Placeholder = "#86EFAC",
    Background = "#0C0F14",
    Button = "#15803D",
    Icon = "#BBF7D0",
})

-- Soft Blood
WindUI:AddTheme({
    Name = "Soft Blood",
    Accent = "#EF4444",
    Dialog = "#1C1C1E",
    Outline = "#F87171",
    Text = "#FEE2E2",
    Placeholder = "#FCA5A5",
    Background = "#111111",
    Button = "#DC2626",
    Icon = "#FECACA",
})

-- Ice Matrix
WindUI:AddTheme({
    Name = "Ice Matrix",
    Accent = "#38BDF8",
    Dialog = "#0F172A",
    Outline = "#7DD3FC",
    Text = "#E0F2FE",
    Placeholder = "#A5F3FC",
    Background = "#0B1120",
    Button = "#0EA5E9",
    Icon = "#BAE6FD",
})

-- Purple Smoke
WindUI:AddTheme({
    Name = "Purple Smoke",
    Accent = "#9333EA",
    Dialog = "#1E1B2E",
    Outline = "#C084FC",
    Text = "#F3E8FF",
    Placeholder = "#D8B4FE",
    Background = "#0A0112",
    Button = "#7E22CE",
    Icon = "#E9D5FF",
})

-- Light Frost (light UI option)
WindUI:AddTheme({
    Name = "Light Frost",
    Accent = "#6366F1",
    Dialog = "#F3F4F6",
    Outline = "#CBD5E1",
    Text = "#1F2937",
    Placeholder = "#9CA3AF",
    Background = "#FFFFFF",
    Button = "#E5E7EB",
    Icon = "#4B5563",
})

-- Crimson Void
WindUI:AddTheme({
    Name = "Crimson Void",
    Accent = "#DC2626",
    Dialog = "#1B0D0D",
    Outline = "#EF4444",
    Text = "#FECACA",
    Placeholder = "#F87171",
    Background = "#100606",
    Button = "#B91C1C",
    Icon = "#FCA5A5",
})

-- Main Dravok Hub Window
local Window = WindUI:CreateWindow({
    Title = "Dravok Hub",
    Icon = "terminal", -- Changed to something more techy, you can change this
    Author = "Dravok Team",
    Folder = "DravokHub",
    Size = UDim2.fromOffset(480, 360),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    Background = "", -- Optional: rbxassetid for a background image
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = true,
        Callback = function()
            print("Dravok User clicked user icon")
        end,
    },
})

-- Open Button Customization
Window:EditOpenButton({
    Title = "Dravok Hub | Open",
    Icon = "folder-open",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

-- Topbar Custom Button
Window:CreateTopbarButton("DravokDiscord", "link", function()
    setclipboard("https://discord.gg/dravokhub") -- Replace with your Discord invite
    print("Discord link copied")
end, 990)

local Section = Window:Section({
    Title = "Dravok Hub Tabs",
    Icon = "grid",
    Opened = false,
})

local Universal = Window:Tab({
    Title = "Universal",
    Icon = "globe",
    Locked = false,
})

local Player = Window:Tab({
    Title = "Player",
    Icon = "user",
    Locked = false,
})

local Visuals = Window:Tab({
    Title = "Visuals",
    Icon = "eye",
    Locked = false,
})

local Status = Window:Tab({
    Title = "Status",
    Icon = "circle-plus",
    Locked = false,
})

local Info = Window:Tab({
    Title = "Info",
    Icon = "info",
    Locked = false,
})

local Scripts = Window:Tab({
    Title = "Scripts",
    Icon = "code",
    Locked = false,
})

local Misc = Window:Tab({
    Title = "Misc",
    Icon = "command",
    Locked = false,
})

local Settings = Window:Tab({
    Title = "Settings",
    Icon = "settings",
    Locked = false,
})

Window:SelectTab(1)

local statusParagraph = Status:Paragraph({
    Title = "Supported Games Status",
    Desc = table.concat({
        "🟢 Green | Universal — It hasn't been detected",
        "🔴 Red | Blox Fruits — Rework on UI and fixing errors and passing the anti-cheat.",
        "⬛ Black | Blade Ball — Game is dead",
        "⬛ Black | Anime Last Stand — Stop being good, and was a waste of time",
        "🟡 Yellow | Fisch — Almost finished",
        "🔴 Red | Grow a Garden — Currently bypassing the anti cheat",
        "🔴 Red | Steal A Brainrot — Currently bypassing the hard anti cheat. ETA: 2-9 weeks"
    }, "\n"),
    Color = "White",
    Locked = false,
})

local infoooParagraph = Info:Paragraph({
    Title = "About This Script",
    Desc = 
        "🔹 Creator: Dravok Team\n" ..
        "🔹 Version: 1.0.0\n" ..
        "🔹 Description: This script provides useful toggles like Anti AFK, Anti Lag, " ..
        "Position Lock, and Anti Fling to enhance your Roblox experience.\n" ..
        "🔹 Support: Join our Discord for updates and support.\n",
    Color = "Grey",
    Image = "",       -- you can add an image URL or asset ID here
    ImageSize = 30,
    Thumbnail = "",   -- you can add a thumbnail URL or asset ID here
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "app-window-mac",
            Title = "Join Discord",
            Callback = function()
                setclipboard("https://discord.gg/yourserver") -- replace with your Discord invite
                print("Discord invite copied to clipboard!")
            end,
        }
    }
})

local infoParagraph = Scripts:Paragraph({
    Title = "Script Disclaimer",
    Desc = "Some scripts shown here were not created by the Dravok Team. We carefully review and select them for safety and performance. Use only if you trust the script.",
    Color = "Grey",
    Image = "", -- You can add an alert icon asset here if wanted
    ImageSize = 30,
    Thumbnail = "", -- Optional: Add a logo or warning sign thumbnail
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "check",
            Title = "Understood",
            Callback = function()
                print("User acknowledged the disclaimer.")
            end,
        },
        {
            Icon = "x",
            Title = "Cancel",
            Callback = function()
                print("User dismissed the disclaimer.")
            end,
        }
    }
})

local bloxfruitloadCode = Scripts:Code({
    Title = "Blox Fruit loadstring | Redz Hub | Keyless",
    Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))()]]
})

local digloadCode = Scripts:Code({
    Title = "DIG loadstring | Ronix Hub | Key",
    Code = [[loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7d8a2a1a9a562a403b52532e58a14065.lua"))()]]
})

local musclelgendloadCode = Scripts:Code({
    Title = "Muscle Legends loadstring | Nebula Hub | Keyless",
    Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/ttvkaiser/Nebula-Hub/refs/heads/main/Muscle-Legends/.lua"))()]]
})

local miscSection2 = Misc:Section({ 
    Title = "Server Tools",
    TextXAlignment = "Left",
    TextSize = 17,
})

-- Rejoin Server Button
local RejoinButton = Misc:Button({
    Title = "Rejoin Server",
    Desc = "Rejoin the current server.",
    Locked = false,
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end
})

-- Leave Server Button
local LeaveButton = Misc:Button({
    Title = "Leave Server",
    Desc = "Leave the current game.",
    Locked = false,
    Callback = function()
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        LocalPlayer:Kick("You have left the server.")
    end
})

local Players = game:GetService("Players")
local Stats = game:GetService("Stats")

local jaParagraph = Misc:Paragraph({
    Title = "Server Info",
    Desc = "Gathering data...",
    Color = "Grey",
    Image = "",
    ImageSize = 30,
    Thumbnail = "",
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "server",
            Title = "Refresh Stats",
            Callback = function()
                local playerCount = #Players:GetPlayers()
                
                -- Estimate average ping (ms)
                local totalPing = 0
                local count = 0
                for _, player in ipairs(Players:GetPlayers()) do
                    local ping = player:GetNetworkPing()
                    totalPing += ping
                    count += 1
                end
                local averagePing = math.floor((totalPing / math.max(count, 1)) * 1000) -- in ms

                -- Guess region from JobId (not reliable but fun placeholder)
                local jobId = game.JobId
                local regionGuess = "Unknown"
                if string.find(jobId, "ares") then
                    regionGuess = "US West"
                elseif string.find(jobId, "gru") then
                    regionGuess = "Europe"
                elseif string.find(jobId, "hkg") then
                    regionGuess = "Asia"
                end

                jaParagraph:SetDesc("🌐 Players: " .. playerCount .. 
                                  "\n📍 Region: " .. regionGuess .. 
                                  "\n📶 Avg Ping: " .. averagePing .. " ms")
            end,
        }
    }
})

local miscSection3 = Misc:Section({ 
    Title = "Performance",
    TextXAlignment = "Left",
    TextSize = 17,
})

local RunService = game:GetService("RunService")

local wspParagraph = Misc:Paragraph({
    Title = "Performance",
    Desc = "Click below to get your average FPS.",
    Color = "Green",
    Locked = false,
    Buttons = {
        {
            Icon = "gauge",
            Title = "Check Average FPS",
            Callback = function()
                local frameTimes = {}
                local sampleSize = 100  -- Number of frames to average

                local connection
                connection = RunService.RenderStepped:Connect(function(dt)
                    table.insert(frameTimes, dt)
                    if #frameTimes > sampleSize then
                        table.remove(frameTimes, 1)
                    end
                end)

                task.wait(2) -- Let it gather some frame data

                connection:Disconnect()

                local totalTime = 0
                for _, dt in ipairs(frameTimes) do
                    totalTime += dt
                end
                local averageDt = totalTime / #frameTimes
                local fps = math.floor(1 / averageDt)

                wspParagraph:SetDesc("🖥️ Average FPS: " .. fps)
            end
        }
    }
})

local hfzjfButton = Misc:Button({
    Title = "Boost FPS",
    Desc = "Lower graphics and disable effects to improve performance.",
    Locked = false,
    Callback = function()
        -- Remove textures and effects
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("Texture") or v:IsA("Decal") then
                v:Destroy()
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Enabled = false
            elseif v:IsA("Explosion") then
                v:Destroy()
            end
        end

        -- Set low quality terrain
        if workspace:FindFirstChildOfClass("Terrain") then
            workspace.Terrain.WaterWaveSize = 0
            workspace.Terrain.WaterWaveSpeed = 0
            workspace.Terrain.WaterReflectance = 0
            workspace.Terrain.WaterTransparency = 1
        end

        -- Disable lighting effects
        local lighting = game:GetService("Lighting")
        lighting.GlobalShadows = false
        lighting.FogEnd = 1e10
        lighting.Brightness = 0

        -- Reduce rendering
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

        -- Remove post-processing
        for _, v in pairs(lighting:GetChildren()) do
            if v:IsA("PostEffect") then
                v.Enabled = false
            end
        end

        print("✅ FPS Boost Applied")
    end
})

local antilagandafkToggle = Misc:Toggle({
    Title = "Anti AFK + Anti Lag",
    Desc = "Prevents AFK kick and reduces lag.",
    Icon = "gauge",
    Type = "Toggle",
    Default = false,
    Callback = function(state)
        if state then
            print("🟢 Anti AFK & Anti Lag Enabled")

            -- Anti-AFK
            if not getgenv().AntiAFKConnection then
                getgenv().AntiAFKConnection = game:GetService("Players").LocalPlayer.Idled:Connect(function()
                    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                    task.wait(1)
                    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                end)
            end

            -- Anti-Lag
            for _, v in pairs(game:GetDescendants()) do
                if v:IsA("Texture") or v:IsA("Decal") then
                    v:Destroy()
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Enabled = false
                elseif v:IsA("Explosion") then
                    v:Destroy()
                end
            end

            local lighting = game:GetService("Lighting")
            lighting.GlobalShadows = false
            lighting.FogEnd = 1e10
            lighting.Brightness = 0
            for _, v in pairs(lighting:GetChildren()) do
                if v:IsA("PostEffect") then
                    v.Enabled = false
                end
            end

            if workspace:FindFirstChildOfClass("Terrain") then
                local terrain = workspace:FindFirstChildOfClass("Terrain")
                terrain.WaterWaveSize = 0
                terrain.WaterWaveSpeed = 0
                terrain.WaterReflectance = 0
                terrain.WaterTransparency = 1
            end

            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

        else
            print("🔴 Anti AFK & Anti Lag Disabled")
            if getgenv().AntiAFKConnection then
                getgenv().AntiAFKConnection:Disconnect()
                getgenv().AntiAFKConnection = nil
            end
        end
    end
})

local miscSection4 = Misc:Section({ 
    Title = "Extras",
    TextXAlignment = "Left",
    TextSize = 17,
})

local lovkpositiobToggle = Misc:Toggle({
    Title = "Lock Position",
    Desc = "Freezes your character in place.",
    Icon = "anchor",
    Type = "Toggle",
    Default = false,
    Callback = function(state)
        local player = game:GetService("Players").LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()

        if state then
            print("🟢 Position Locked")

            -- Save current position
            getgenv()._lockedPos = char:WaitForChild("HumanoidRootPart").Position

            -- Start loop to lock position
            getgenv()._lockPositionLoop = game:GetService("RunService").Heartbeat:Connect(function()
                if char and char:FindFirstChild("HumanoidRootPart") then
                    char.HumanoidRootPart.Velocity = Vector3.zero
                    char.HumanoidRootPart.RotVelocity = Vector3.zero
                    char:MoveTo(getgenv()._lockedPos)
                end
            end)

        else
            print("🔴 Position Unlocked")

            -- Stop the loop
            if getgenv()._lockPositionLoop then
                getgenv()._lockPositionLoop:Disconnect()
                getgenv()._lockPositionLoop = nil
            end

            getgenv()._lockedPos = nil
        end
    end
})

local antiflingToggle = Misc:Toggle({
    Title = "Anti Fling",
    Desc = "Prevents players from flinging you.",
    Icon = "shield",
    Type = "Toggle",
    Default = false,
    Callback = function(state)
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer

        if state then
            print("🛡️ Anti Fling Enabled")

            getgenv()._antiFlingLoop = game:GetService("RunService").Heartbeat:Connect(function()
                local char = LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    local hrp = char.HumanoidRootPart
                    -- Clamp extreme values to 0 to avoid flings
                    if hrp.Velocity.Magnitude > 150 then
                        hrp.Velocity = Vector3.zero
                        hrp.RotVelocity = Vector3.zero
                    end
                    -- Optional: anchor briefly if necessary
                    -- hrp.Anchored = true
                    -- task.wait(0.05)
                    -- hrp.Anchored = false
                end
            end)

        else
            print("🚫 Anti Fling Disabled")

            if getgenv()._antiFlingLoop then
                getgenv()._antiFlingLoop:Disconnect()
                getgenv()._antiFlingLoop = nil
            end
        end
    end
})

local ThemeSection = Settings:Section({ 
    Title = "UI Settings",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local ThemeDropdown = Settings:Dropdown({
    Title = "Change Themes",
    Values = {
        "Dark Core",
        "Midnight Neon",
        "Cyber Blue",
        "Terminal Green",
        "Soft Blood",
        "Ice Matrix",
        "Purple Smoke",
        "Light Frost",
        "Crimson Void"
    },
    Value = "Dark Core",
    Callback = function(themeName)
        WindUI:SetTheme(themeName)
        print("Theme switched to: " .. themeName)
    end
})

local fontDropdown = Settings:Dropdown({
    Title = "Change Font",
    Values = {
        "Mukta", 
        "Mulish", 
        "Cairo", 
        "Silkscreen", 
        "Blaka"
    },
    Value = "Blaka",
    Callback = function(font)
        local fontAssets = {
            ["Mukta"] = "rbxassetid://12187365559",
            ["Mulish"] = "rbxassetid://12187372629",
            ["Cairo"] = "rbxassetid://12187377099",
            ["Silkscreen"] = "rbxassetid://12187371840",
            ["Blaka"] = "rbxassetid://12187365104"
        }

        local selectedFont = fontAssets[font]
        if selectedFont then
            WindUI:SetFont(selectedFont)
            print("Font changed to:", font)
        else
            warn("Invalid font selected.")
        end
    end
})

local transparencyToggle = Settings:Toggle({
    Title = "Transparent UI",
    Desc = "Toggle UI transparency on/off",
    Icon = "eye",
    Type = "Toggle",
    Default = true,
    Callback = function(state)
        Window:ToggleTransparency(state)
        print("Window transparency:", tostring(state))
    end
})

local resetButton = Settings:Button({
    Title = "Reset UI Settings",
    Callback = function()
        WindUI:SetTheme("Dark Core")
        WindUI:SetFont("rbxassetid://12187365104")
        Window:ToggleTransparency(true)
        print("UI settings reset to default.")
    end
}) 
