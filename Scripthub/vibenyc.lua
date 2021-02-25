local l__Players__1 = game:GetService("Players")
local l__Anim__6 = game.Players.LocalPlayer.PlayerGui.Main.Anim
game.Players.LocalPlayer.PlayerGui.Main.Anim.Visible = true
game.Players.LocalPlayer.PlayerGui.Main.Anim.Position = UDim2.new(0.2,0,0.5,0)

local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
local toggle = Instance.new("TextButton",gui)
toggle.Text = "Toggle Emote GUI"
toggle.TextScaled = true
toggle.AnchorPoint = Vector2.new(0.5,0)
toggle.Size = UDim2.new(0,100,0,35,0)
toggle.Position = UDim2.new(0.5,0,0,0)

toggle.MouseButton1Click:Connect(function()
   if l__Players__1.LocalPlayer.PlayerGui.Main.Anim.Visible == true then
       l__Players__1.LocalPlayer.PlayerGui.Main.Anim.Visible = false
   else
       l__Players__1.LocalPlayer.PlayerGui.Main.Anim.Visible = true
   end
end)

for v28, v29 in pairs(l__Anim__6:GetDescendants()) do
if v29:IsA("ImageButton") and v29.Name == "Template" then
local u16 = v11;
v29.MouseButton1Click:Connect(function()
--if l__MarketplaceService__2:UserOwnsGamePassAsync(l__Players__1.LocalPlayer.UserId, 10944572) and l__Players__1.LocalPlayer.Character and l__Players__1.LocalPlayer.Character:FindFirstChild("Humanoid") then
if not script:FindFirstChild("Animation") then
if u16 then
local v30 = l__Players__1.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks();
if #v30 > 0 then
for v31, v32 in pairs(v30) do
if v32.Animation.AnimationId == "rbxassetid://" .. u16 then
v32:Stop();
end;
end;
end;
end;
u16 = nil;
u15 = nil;
local v33 = Instance.new("Animation", script);
v33.AnimationId = "rbxassetid://" .. tostring(v29.ID.Value);
local v34 = l__Players__1.LocalPlayer.Character.Humanoid:LoadAnimation(v33);
v34:Play();
v34:AdjustSpeed(u11);
u16 = v29.ID.Value;
u15 = v34;
return;
end;
if script.Animation.AnimationId ~= "rbxassetid://" .. tostring(v29.ID.Value) then
if u16 then
local v35 = l__Players__1.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks();
if #v35 > 0 then
for v36, v37 in pairs(v35) do
if v37.Animation.AnimationId == "rbxassetid://" .. u16 then
v37:Stop();
end;
end;
end;
end;
u16 = nil;
u15 = nil;
local l__Animation__38 = script.Animation;
l__Animation__38.AnimationId = "rbxassetid://" .. tostring(v29.ID.Value);
local v39 = l__Players__1.LocalPlayer.Character.Humanoid:LoadAnimation(l__Animation__38);
v39:Play();
v39:AdjustSpeed(u11);
u16 = v29.ID.Value;
u15 = v39;
return;
elseif u16 then
local v40 = l__Players__1.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks();
if #v40 > 0 then
for v41, v42 in pairs(v40) do
if v42.Animation.AnimationId == "rbxassetid://" .. u16 then
v42:Stop();
end;
end;
end;
u16 = nil;
u15 = nil;
script.Animation:Destroy();
end;
end);
end;
end
