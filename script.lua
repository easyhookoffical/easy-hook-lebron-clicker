local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "easy.hook | lebron clicker",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Loading easy.hook",
    LoadingSubtitle = "easy.hook on top",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "easyhook", -- Create a custom folder for your hub/game
       FileName = "lebronclicker"
    },
 
    Discord = {
       Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "dKkqHDt9bJ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Key System",
       Subtitle = "Enter your key",
       Note = "Get your key from are discord, .gg/dKkqHDt9bJ", -- Use this to tell the user how to get a key
       FileName = "easyhooklebronclickerkey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"easyhook-0349300939042058154689647"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })


 -- auto farm tab
 local autofarmtab = Window:CreateTab("Auto Farm", nil) -- Title, Image
 local autofarmsection = autofarmtab:CreateSection("Auto Farm")
 autoclickerbutton = autofarmtab:CreateToggle({
    Name = "Auto Clicker",
    CurrentValue = false,
    Flag = "autoclickerflag",  -- Unique identifier for saving config
    Callback = function(Value)
        if Value then
            -- Start the auto-clicking process when the toggle is on
            if not isAutoClicking then
                isAutoClicking = true
                autoclickerThread = game:GetService("RunService").Heartbeat:Connect(function()
                    if isAutoClicking then
                        game:GetService("ReplicatedStorage").Remotes.Clicker:FireServer()
                    end
                end)
            end
        else
            -- Stop the auto-clicking process when the toggle is off
            if isAutoClicking then
                isAutoClicking = false
                if autoclickerThread then
                    autoclickerThread:Disconnect()  -- Disconnect the thread to stop the auto-clicking
                end
            end
        end
    end,
})
autorebirth = autofarmtab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "autorebirthflag", -- Unique identifier for saving config
    Callback = function(Value)
        if Value then
            -- If the toggle is on, start the auto-rebirth loop
            if not autorebirthThread then
                autorebirthThread = game:GetService("RunService").Heartbeat:Connect(function()
                    if Value then
                        -- Fire the remote to auto-rebirth
                        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
                    end
                end)
            end
        else
            -- If the toggle is off, stop the auto-rebirth loop
            if autorebirthThread then
                autorebirthThread:Disconnect()  -- Stop the loop by disconnecting the thread
                autorebirthThread = nil
            end
        end
    end,
})


 -- egg tab
 local eggtab = Window:CreateTab("Eggs", nil) -- Title, Image
 local eggsection = eggtab:CreateSection("Eggs")
 local openbasicegg = eggtab:CreateButton({
    Name = "Basic Egg",
    Callback = function()
        local args = {
            [1] = "Basic Lebrons [cost: 100]",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local funkylebronegg = eggtab:CreateButton({
    Name = "Funky Lebrons [cost: 5K]",
    Callback = function()
        local args = {
            [1] = "Funky Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local biglebronsegg = eggtab:CreateButton({
    Name = "Big Lebrons [cost: 50K]",
    Callback = function()
        local args = {
            [1] = "Big Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local smalllebronsegg = eggtab:CreateButton({
    Name = "Small Lebrons [cost: 300K]",
    Callback = function()
        local args = {
            [1] = "Small Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local sillylebrons = eggtab:CreateButton({
    Name = "Silly Lebrons [cost: 5M]",
    Callback = function()
        local args = {
            [1] = "Silly Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local extralebrons = eggtab:CreateButton({
    Name = "Extra Lebrons [cost: 250M]",
    Callback = function()
        local args = {
            [1] = "Extra Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local newlebrons = eggtab:CreateButton({
    Name = "New Lebrons [cost: 5T]",
    Callback = function()
        local args = {
            [1] = "New Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local colourfullebrons = eggtab:CreateButton({
    Name = "Colorful Lebrons [cost: 1Qd]",
    Callback = function()
        local args = {
            [1] = "Colorful Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local lebronbooksegg = eggtab:CreateButton({
    Name = "Lebron Books [cost: 250Qd]",
    Callback = function()
        local args = {
            [1] = "Lebron Books",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local dogsegg = eggtab:CreateButton({
    Name = "Dogs? [cost: 100Sx]",
    Callback = function()
        local args = {
            [1] = "Dogs",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local fishegg = eggtab:CreateButton({
    Name = "Fish? [cost: 10Sp]",
    Callback = function()
        local args = {
            [1] = "Fish",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })
 local superlebrons = eggtab:CreateButton({
    Name = "Super Lebrons [cost: 50Oc]",
    Callback = function()
        local args = {
            [1] = "Super Lebrons",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))        
    end,
 })

  -- area tab
  local areatab = Window:CreateTab("Areas", nil) -- Title, Image
  local areassection = areatab:CreateSection("Areas")
  autobuybestarea = areatab:CreateToggle({
    Name = "Auto Buy Best Area",
    CurrentValue = false,
    Flag = "buybestareaflag",  -- Unique identifier for saving config
    Callback = function(Value)
        if Value then
            -- If the toggle is on, start the auto-buying loop
            if not autobuyThread then
                autobuyThread = game:GetService("RunService").Heartbeat:Connect(function()
                    if Value then
                        -- Fire the remote to auto-buy
                        game:GetService("ReplicatedStorage").Remotes.Area:FireServer()
                        wait(0.1)
                    end
                end)
            end
        else
            -- If the toggle is off, stop the auto-buying loop
            if autobuyThread then
                autobuyThread:Disconnect()  -- Stop the loop by disconnecting the thread
                autobuyThread = nil
            end
        end
    end,
})
