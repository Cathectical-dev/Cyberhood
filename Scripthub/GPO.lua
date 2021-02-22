if game.PlaceId == 2753915549 then ---BLOX FRUITS
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VLi"))()

    local win = Lib:Window("Cyberhood")

    local serv = win:Server("Cyberhood", "")

    local ss = serv:Channel("MAIN")
    local ssss = serv:Channel("FARM")
    local sss = serv:Channel("STATS")
    

    --IMPORTANT VARIABLE
    local Character_Table = {}
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Character_Table, v.Name)
        end
    end
    getgenv().npc = nil
    getgenv().autofarm = false

    ss:Button(
        "Chest Esp",
        function()
            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == "Chest1" then
                elseif v.Name == "Chest2" then
                elseif v.Name == "Chest3" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")

                    BillboardGui.Parent = v
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    TextLabel.Text = "X"
                    TextLabel.TextColor3 = Color3.new(1, 1, 0)
                    TextLabel.TextScaled = true
                end
            end
        end
    )

    ss:Button(
        "Inf Dodge",
        function()
            local metatable = getrawmetatable(game)
            local namecall = metatable.__namecall
            setreadonly(metatable, false)

            metatable.__namecall =
                newcclosure(
                function(self, ...)
                    if self.Name == "CommE" then
                        return 0
                    end
                    return namecall(self, ...)
                end
            )
        end
    )

    sss:Toggle(
        "Melee",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
                end
            end
        end
    )
    sss:Toggle(
        "Gun",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Sword",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Demon Fruit",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", 1)
                end
            end
        end
    )

    sss:Toggle(
        "Defense",
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then --AUTO UPGRADE GUN
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", 1)
                end
            end
        end
    )

    ssss:Dropdown(
        "Mobs To Farm",
        Character_Table,
        function(t)
            getgenv().npc = t
        end
    )

    ssss:Toggle(
        "AutoFarm",
        false,
        function(bool)
            getgenv().autofarm = bool
            while getgenv().autofarm do wait()




            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == getgenv().npc and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:IsA("Model") then
            
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            tween = tweenService:Create(v.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position + Vector3.new(0,10,0),game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position)})
            tween:Play()
            

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 1294.89221, 17.5276394, 1426.85352


            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 1309.11902, 17.5245209, 1445.48462
            
            v.Humanoid.HipHeight = 10
            v.HumanoidRootPart.Size = Vector3.new(100,20,100)
            v.HumanoidRootPart.CanCollide = false
            
                     end
               end
            end
        end
    )

  

    ssss:Toggle(
        "AutoAttack",
        false,
        function(t)
            getgenv().farmer = t
            while wait() do
                if getgenv().farmer == true then
                    local virtualUser = game:GetService("VirtualUser")
                    virtualUser:CaptureController()
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                    wait()
                    virtualUser:Button1Down(Vector2.new(), CFrame.new())
                end
            end
        end
    )

end
