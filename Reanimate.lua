-------------------------------------------------------------------------------------------------------------

if getgenv().Reanimated == true then
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='Already Reanimated',Duration=5})
	return
end

game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='Loading Reanimate...',Duration=5})
local p = game:GetService("Players").LocalPlayer
local char = p.Character
local Noclip
local UserInputService = game:GetService("UserInputService")
local lolz

if char:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R6 then
	getgenv().Reanimated = true
	char.Animate:Destroy()
	local function NL()
		if p.Character ~= nil then
			for _, child in pairs(p.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end
	Noclip = game:GetService('RunService').Stepped:Connect(NL)

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

	local HEAD = char["Head"]
	local att0 = Instance.new("Attachment",HEAD)
	att0.Orientation = Vector3.new(0, 0, 0)
	att0.Position = Vector3.new(-1.5, 0, 0)
	att0.Name = "HEAD"

	local att1 = Instance.new("Attachment",char["Torso"])

	local ap = Instance.new("AlignPosition",HEAD)
	ap.Attachment0 = att0
	ap.Attachment1 = att1
	ap.RigidityEnabled = true 


	local ao = Instance.new("AlignOrientation",HEAD) 
	ao.Attachment0 = att0
	ao.Attachment1 = att1
	ao.RigidityEnabled = true
	
	-------------------------------------------------------------------------
	
	Instance.new("BoolValue", char["Torso"]).Name = "NAP Client Reanim"
	
	-------------------------------------------------------------------------
	
	for i,v in pairs(char.Torso:GetDescendants()) do
	    if v:IsA("Motor6D") and v.Name ~= "Neck" then
	        v:Destroy()
	    end
	end

	char.Humanoid.Died:Connect(function()
		getgenv().Reanimated = false
		Noclip:Disconnect()
		lolz:Disconnect()
		game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='Disabled Reanimate',Duration=5})
	end)
	lolz = p.CharacterAdded:Connect(function()
		getgenv().Reanimated = false
		Noclip:Disconnect()
		game:GetService("StarterGui"):SetCore("SendNotification",{Title="NAP Client Reanimate",Text='Disabled Reanimate',Duration=5})
		lolz:Disconnnect()
	end)
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
