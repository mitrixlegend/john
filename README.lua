FunctionManager:register("JOHN DOE", function()

	local redSkyboxAssetId = "rbxassetid://1012887"
	local sky = Lighting:FindFirstChildOfClass("Sky")
	if not sky then
		sky = Instance.new("Sky", Lighting)
	end
	sky.SkyboxBk = redSkyboxAssetId
	sky.SkyboxDn = redSkyboxAssetId
	sky.SkyboxFt = redSkyboxAssetId
	sky.SkyboxLf = redSkyboxAssetId
	sky.SkyboxRt = redSkyboxAssetId
	sky.SkyboxUp = redSkyboxAssetId

	if not ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok") then
		local detection = Instance.new("Decal")
		detection.Name = "juisdfj0i32i0eidsuf0iok"
		detection.Parent = ReplicatedStorage
	end

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "PersistentSoundGui"
	screenGui.ResetOnSpawn = false
	screenGui.Parent = player:WaitForChild("PlayerGui")

	local button = Instance.new("TextButton")
	button.Size = UDim2.new(0, 150, 0, 50)
	button.Position = UDim2.new(0.02, 0, 0.477, 0)
	button.Text = "Sound Toggle"
	button.Font = Enum.Font.SourceSansBold
	button.TextSize = 20
	button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Parent = screenGui

	local backgroundSound = SoundService:FindFirstChild("PersistentBGSound")
	if not backgroundSound then
		backgroundSound = Instance.new("Sound")
		backgroundSound.Name = "PersistentBGSound"
		backgroundSound.SoundId = "rbxassetid://19094700"
		backgroundSound.PlaybackSpeed = 0.221
		backgroundSound.Looped = true
		backgroundSound.Volume = 1
		backgroundSound.Parent = SoundService
		backgroundSound:Play()
	end

	button.Activated:Connect(function()
		backgroundSound.Playing = not backgroundSound.Playing
	end)

	local function setupCharacter(character)
		local humanoid = character:WaitForChild("Humanoid")
		local torso = character:WaitForChild("Torso")
		local hrp = character:WaitForChild("HumanoidRootPart")

		local tool = Instance.new("Tool")
		tool.Name = "Slash"
		tool.RequiresHandle = false
		tool.Parent = player.Backpack

		tool.Activated:Connect(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://186934658"
			local track = humanoid:LoadAnimation(animation)
			track:Play()
			track:AdjustSpeed(2)

			local s = Instance.new("Sound", torso)
			s.SoundId = "rbxassetid://28144425"
			s:Play()

			task.wait(0.2)

			local s2 = Instance.new("Sound", torso)
			s2.SoundId = "rbxassetid://429400881"
			s2.Volume = 0.2
			s2:Play()
		end)

		local naeeym = Instance.new("BillboardGui", character)
		naeeym.Size = UDim2.new(0, 100, 0, 40)
		naeeym.StudsOffset = Vector3.new(0, 2, 0)
		naeeym.Adornee = character:WaitForChild("Head")

		local tecks = Instance.new("TextLabel", naeeym)
		tecks.BackgroundTransparency = 1
		tecks.BorderSizePixel = 0
		tecks.Font = Enum.Font.Fantasy
		tecks.TextSize = 24
		tecks.TextStrokeTransparency = 0
		tecks.TextStrokeColor3 = Color3.new(0, 0, 0)
		tecks.TextColor3 = Color3.new(0, 0, 0)
		tecks.Size = UDim2.new(1, 0, 0.5, 0)
		tecks.Text = "John Doe"

		local function changeName(newName)
			tecks.Text = newName
		end

		local function shakeTag()
			local originalOffset = naeeym.StudsOffset
			for _ = 1, 10 do
				naeeym.StudsOffset = originalOffset + Vector3.new(math.random(-1,1), math.random(-1,1), math.random(-1,1))
				task.wait(0.05)
			end
			naeeym.StudsOffset = originalOffset
		end

		coroutine.wrap(function()
			while character:IsDescendantOf(workspace) do
				changeName("BURN IN HELL")
				shakeTag()
				task.wait(0.2)
				changeName("STOP")
				task.wait(0.1)
				changeName("JUST GIVE UP")
				shakeTag()
				task.wait(0.2)
				changeName("STOP")
				shakeTag()
				task.wait(0.2)
				changeName("JOHN DOE")
				shakeTag()
				task.wait(0.3)
				changeName("HOPELESS")
				shakeTag()
				task.wait(0.3)
			end
		end)()

		local footPartSize = Vector3.new(10, 0.5, 10)
		local floorPartColor = BrickColor.Black()
		local floorMaterial = Enum.Material.Neon
		local yOffset = -2.8
		local lastPosition = hrp.Position
		local standingTimer = 0

		RunService.Heartbeat:Connect(function(dt)
			if not character:IsDescendantOf(workspace) then return end
			local currentPosition = hrp.Position
			standingTimer += dt
			local distanceMoved = (currentPosition - lastPosition).Magnitude
			local stepPosition = Vector3.new(currentPosition.X, hrp.Position.Y + yOffset, currentPosition.Z)

			local function createFootstep(position)
				local part = Instance.new("Part")
				part.Size = footPartSize
				part.Position = position
				part.Anchored = true
				part.CanCollide = false
				part.BrickColor = floorPartColor
				part.Material = floorMaterial
				part.Transparency = 0.5
				part.Parent = workspace
				task.spawn(function()
					for i = 1, 10 do
						part.Transparency = i * 0.03
						task.wait(0.05)
					end
				end)
				Debris:AddItem(part, 1)
			end

			if distanceMoved > 1 then
				createFootstep(stepPosition)
				lastPosition = currentPosition
				standingTimer = 0
			elseif standingTimer > 0.5 then
				createFootstep(stepPosition)
				standingTimer = 0
			end
		end)

		local movel = 0.1
		local hiddenfling = true

		local function fling()
			while hiddenfling and character:IsDescendantOf(workspace) do
				if hrp then
					local originalVelocity = hrp.Velocity
					hrp.Velocity = originalVelocity * 10000 + Vector3.new(0, 10000, 0)
					RunService.RenderStepped:Wait()
					hrp.Velocity = originalVelocity
					RunService.Stepped:Wait()
					hrp.Velocity = originalVelocity + Vector3.new(0, movel, 0)
					movel = -movel
				end
				RunService.Heartbeat:Wait()
			end
		end
		coroutine.wrap(fling)()
	end

	player.CharacterAdded:Connect(setupCharacter)
	if player.Character then
		setupCharacter(player.Character)
	end

	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")

	local player = Players.LocalPlayer
	local mouse = player:GetMouse()

	local function teleportToMousePosition()
		local character = player.Character
		if not character or not character:FindFirstChild("HumanoidRootPart") then
			return
		end

		local target = mouse.Hit
		if target then
			character:MoveTo(target.Position)
		end
	end

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end

		if input.KeyCode == Enum.KeyCode.T then
			teleportToMousePosition()
		end
	end)
end, "Trolling", "BROKEN")
