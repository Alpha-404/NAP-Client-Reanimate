-------------------------------------------------------------------------------------------------------------

if game:GetService("Players").LocalPlayer.Character.Torso:FindFirstChild("NAP Client Reanim") then
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='Already Reanimated',Duration=5})
	return
end

game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='Loading Reanimate...',Duration=5})
local p = game:GetService("Players").LocalPlayer
local char = p.Character
local UserInputService = game:GetService("UserInputService")
local NC

if char:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R6 then
	game:GetService("Players").LocalPlayer.Character.Archivable = true 
	
	local temp = Instance.new("Model", workspace)
	Instance.new("Humanoid",temp)
	temp.Name = "Fred"
	p.Character = temp
	if char:FindFirstChildOfClass("Humanoid"):FindFirstChild("Animator") then
		char:FindFirstChildOfClass("Humanoid").Animator.Parent = temp.Humanoid
	end
	wait()
	local rig
	if char:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
		rig = "R15"
	else
		rig = "R6"
	end
	local Reset = Instance.new("BindableEvent")
	Reset.Event:Connect(function()
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
		Reset:Destroy()
		local m = Instance.new("Model", workspace)
		m.Name = "UwU"
		local h = Instance.new("Humanoid", m)
		p.Character:Destroy()
		wait()
		p.Character = m
		wait()
		h.Health = 0
		p.ChildAdded:Wait()
		m:Destroy()
	end)
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", Reset)
	char.Humanoid:Destroy()
	local humanoid = Instance.new("Humanoid", char)
	humanoid.RequiresNeck = false
	humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	humanoid.HealthDisplayDistance = Enum.HumanoidHealthDisplayType.AlwaysOff
	if rig == "R15" then
		humanoid.RigType = Enum.HumanoidRigType.R15
		humanoid.HipHeight = 2.19
	else
		humanoid.RigType = Enum.HumanoidRigType.R6
	end
	p.Character = char
	workspace.CurrentCamera.CameraSubject = char
	if char:FindFirstChild("Animate") then
		char.Animate.Disabled = true
		char.Animate.Disabled = false
	end
	wait()
	temp:Destroy()

	-----------------------------------------------------------------------

	NC = game:GetService('RunService').Stepped:Connect(function()
		if p.Character ~= nil then
			for _, child in pairs(p.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end)

	spawn(function()
		p.CharacterAdded:Wait()
		NC:Disconnect()
	end)

	-----------------------------------------------------------------------
	local LL = char["Left Leg"]
	local att0 = Instance.new("Attachment",LL)
	att0.Orientation = Vector3.new(0, 0, 0)
	att0.Position = Vector3.new(0.5, 2, 0)
	att0.Name = "LL"

	local att1 = Instance.new("Attachment",char["Torso"])

	local ap = Instance.new("AlignPosition",LL)
	ap.Attachment0 = att0
	ap.Attachment1 = att1
	ap.RigidityEnabled = true 


	local ao = Instance.new("AlignOrientation",LL) 
	ao.Attachment0 = att0
	ao.Attachment1 = att1
	ao.RigidityEnabled = true

	-------------------------------------------------------------------------

	local RL = char["Right Leg"]
	local att0 = Instance.new("Attachment",RL)
	att0.Orientation = Vector3.new(0, 0, 0)
	att0.Position = Vector3.new(-0.5, 2, 0)
	att0.Name = "RL"

	local att1 = Instance.new("Attachment",char["Torso"])

	local ap = Instance.new("AlignPosition",RL)
	ap.Attachment0 = att0
	ap.Attachment1 = att1
	ap.RigidityEnabled = true 


	local ao = Instance.new("AlignOrientation",RL) 
	ao.Attachment0 = att0
	ao.Attachment1 = att1
	ao.RigidityEnabled = true

	-------------------------------------------------------------------------

	local LA = char["Left Arm"]
	local att0 = Instance.new("Attachment",LA)
	att0.Orientation = Vector3.new(0, 0, 0)
	att0.Position = Vector3.new(1.5, 0, 0)
	att0.Name = "LA"

	local att1 = Instance.new("Attachment",char["Torso"])

	local ap = Instance.new("AlignPosition",LA)
	ap.Attachment0 = att0
	ap.Attachment1 = att1
	ap.RigidityEnabled = true 


	local ao = Instance.new("AlignOrientation",LA) 
	ao.Attachment0 = att0
	ao.Attachment1 = att1
	ao.RigidityEnabled = true

	-------------------------------------------------------------------------

	local RA = char["Right Arm"]
	local att0 = Instance.new("Attachment",RA)
	att0.Orientation = Vector3.new(0, 0, 0)
	att0.Position = Vector3.new(-1.5, 0, 0)
	att0.Name = "RA"

	local att1 = Instance.new("Attachment",char["Torso"])

	local ap = Instance.new("AlignPosition",RA)
	ap.Attachment0 = att0
	ap.Attachment1 = att1
	ap.RigidityEnabled = true 


	local ao = Instance.new("AlignOrientation",RA) 
	ao.Attachment0 = att0
	ao.Attachment1 = att1
	ao.RigidityEnabled = true

	-------------------------------------------------------------------------

	local T = char["Torso"]
	local att0 = Instance.new("Attachment",T)
	att0.Orientation = Vector3.new(0, 0, 0)
	att0.Position = Vector3.new(0, 0, 0)
	att0.Name = "TORSO"

	local att1 = Instance.new("Attachment",char["HumanoidRootPart"])

	local ap = Instance.new("AlignPosition",T)
	ap.Attachment0 = att0
	ap.Attachment1 = att1
	ap.RigidityEnabled = true 


	local ao = Instance.new("AlignOrientation",T) 
	ao.Attachment0 = att0
	ao.Attachment1 = att1
	ao.RigidityEnabled = true

	-------------------------------------------------------------------------

	Instance.new("BoolValue", char["Torso"]).Name = "NAP Client Reanim"

	-------------------------------------------------------------------------

	loadstring(game:HttpGet(('https://ghostbin.co/paste/krmyf/raw'),true))()

	for i,v in pairs(char:GetDescendants()) do
		if v:IsA("Motor6D") and v.Name ~= "Neck" then
			v:Destroy()
		end
	end

	local loaded = Instance.new("Sound", game:GetService("SoundService"))
	loaded.SoundId = "rbxassetid://1862043663"
	loaded:Play()
	loaded.Stopped:Connect(function()
		loaded:Destroy()
	end)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='Reanimated',Duration=5})
else
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='R15 Unsupported. Switch to R6',Duration=5})
end

----------------------------------------------------------------------------------
