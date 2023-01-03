local event = game:GetService("ReplicatedStorage").StandAbility["The World"].Barrage
local deb = game:GetService("Debris")
local ServerStorage = game:GetService("ServerStorage")

local UltimateGain = ServerStorage.Items.Value.BarrageUltGain.Value
local Damage = 0.625
local StunTime = ServerStorage.Items.Value.BarrageStunTime.Value
local Anim = ServerStorage.Items.Animation.Barrage

local BarrageRecoveryTime = 0.25

event.OnServerEvent:Connect(function(player, hold)
	local char = player.Character
	local Stand = char:FindFirstChild("Stand")
	if Stand then
		local rootpart = char.PrimaryPart
		if char:FindFirstChild("UsingMove").Value == false then
			
			local function DealDamage()
				local hitbox = ServerStorage.Items.BlockItem.Hitbox:Clone()
				hitbox.Parent = workspace
				hitbox.CFrame = rootpart.CFrame * CFrame.new(0,0,-4)
				
				local ignorelist = {}
				
				hitbox.Touched:Connect(function(hitpart)
					if not hitpart:IsDescendantOf(char) then
						if hitpart.Parent:FindFirstChildWhichIsA("Humanoid") then
							local enemy = hitpart.Parent
							if enemy:WaitForChild("GetDamaged").Value == false then
								if (table.find(ignorelist,enemy) == nil) then
									table.insert(ignorelist,enemy)

									if enemy.HumanoidRootPart.Anchored == true then
										repeat
											wait()
										until enemy.HumanoidRootPart.Anchored == false
									end

									enemy:FindFirstChildWhichIsA("Humanoid"):TakeDamage(Damage)

									local knockback = Instance.new("BodyVelocity")
									knockback.MaxForce = Vector3.new(1e6,1e6,1e6)
									knockback.Velocity = char.PrimaryPart.CFrame.LookVector * 0.25
									knockback.Parent = enemy.PrimaryPart
									deb:AddItem(knockback,.3) 

									enemy:FindFirstChild("UsingMove").Value = true
									enemy.Humanoid.WalkSpeed = 1
									char:FindFirstChild("UltimateValue").Value += UltimateGain

									task.wait(StunTime)

									enemy:FindFirstChildWhichIsA("Humanoid"):TakeDamage(Damage)

									enemy:FindFirstChild("UsingMove").Value = false
									enemy.Humanoid.WalkSpeed = 16

								end
							end
						end
					end
				end)
				
				deb:AddItem(hitbox,1)
				
				local weld = Instance.new("WeldConstraint")
				weld.Parent = hitbox
				weld.Part1 = hitbox
				weld.Part0 = rootpart
				
			end
			
			local function BarrageVFX()
				local function BarrageVFX()

					function CleanPart(part)
						for _,i in pairs(part:GetDescendants()) do
							if i:IsA("Motor6D") or i:IsA("Weld") then
								i:Destroy()
							end
						end
					end

					spawn(function()
						local Chand = Instance.new("Model")
						Chand.Parent = workspace
						Chand.Name = "Handssssss"
						local Arm
						local Lower
						local Hand
						local p1
						local ChooseDirection = math.random(1,2)
						local p0 = Stand.HumanoidRootPart.Position
						
						if ChooseDirection == 1 then
							Arm = Stand.LeftUpperArm:Clone()
							CleanPart(Arm)
							Arm.Parent = Chand
							Lower = Stand.LeftLowerArm:Clone()
							CleanPart(Lower)
							Lower.Parent = Chand
							Hand = Stand.LeftHand:Clone()
							CleanPart(Hand)
							Hand.Parent = Chand
							Arm.Name = "Arm"
							Lower.Name = "Lower"
							Hand.Name = "Hand"

							p1 = Stand.HumanoidRootPart.Left.WorldPosition + Vector3.new(0,math.random(-3,3),0)
						elseif ChooseDirection == 2 then
							Arm = Stand.RightUpperArm:Clone()
							CleanPart(Arm)
							Arm.Parent = Chand
							Lower = Stand.RightLowerArm:Clone()
							CleanPart(Lower)
							Lower.Parent = Chand
							Hand = Stand.RightHand:Clone()
							CleanPart(Hand)
							Hand.Parent = Chand
							Arm.Name = "Arm"
							Lower.Name = "Lower"
							Hand.Name = "Hand"

							p1 = Stand.HumanoidRootPart.Right.WorldPosition + Vector3.new(0,math.random(-3,3),0)
						end

						local Weld = Instance.new("WeldConstraint")
						Weld.Part0 = Hand
						Weld.Part1 = Lower
						Weld.Parent = Hand
						local wedl = Instance.new("WeldConstraint")
						wedl.Part0 = Arm
						wedl.Part1 = Lower
						wedl.Parent = Arm
						Chand.PrimaryPart = Lower
						Chand.PrimaryPart.Anchored = true
						Chand.PrimaryPart.CanCollide = false
						local p2 = Stand.HumanoidRootPart.End.WorldPosition
						local TweenDelay = wait()
						game.Debris:AddItem(Chand,1)

						for i, v in pairs(Chand:GetDescendants()) do
							if v:IsA("BasePart") or v:IsA("MeshPart") then
								game.TweenService:Create(v,TweenInfo.new(1),{Transparency = 1}):Play()
							end
						end

						function lerp(a, b, c)
							return a + (b - a) * c
						end

						function quadBezier(t, p0, p1, p2)
							local l1 = lerp(p0, p1, t)
							local l2 = lerp(p1, p2, t)
							local quad = lerp(l1, l2, t)
							return quad
						end

						for i = 1, 5 do
							local t = i/5
							local pos = quadBezier(t, p0, p1, p2)
							local Direction = quadBezier(t + 0.005, p0,p1, p2)
							--hand.CFrame = CFrame.new(pos,Direction)
							game.TweenService:Create(Chand.PrimaryPart,TweenInfo.new(TweenDelay),{CFrame = CFrame.new(pos, Direction) * CFrame.Angles(math.rad(90),0,0)}):Play()
							--game.TweenService:Create(Chand.Hand,TweenInfo.new(TweenDelay),{CFrame = CFrame.new(pos * 1, Direction) * CFrame.Angles(math.rad(90),0,0)}):Play()
							--game.TweenService:Create(Chand.Arm,TweenInfo.new(TweenDelay),{CFrame = CFrame.new(pos * 1, Direction) * CFrame.Angles(math.rad(90),0,0)}):Play()
							wait()		
						end
					end)
				end

				BarrageVFX()
				BarrageVFX()
			end

			local barraging = Instance.new("BoolValue")
			barraging.Parent = char
			barraging.Name = "Barraging"

			char:FindFirstChild("UsingMove").Value = true

			local SoundFolder = Stand:FindFirstChild("SFX")
			if SoundFolder then
				local BarrageSound = SoundFolder:FindFirstChild("BarrageSound"):Clone()
				if BarrageSound then
					BarrageSound.Parent = char
					BarrageSound:Play()
				end
			end

			char:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 5

			local Starttime = tick()

			char.HumanoidRootPart.StandPosition.Position = Vector3.new(0,-0.5,-2)

			local anim = Stand:FindFirstChildWhichIsA("AnimationController"):LoadAnimation(Anim)

			anim:Play()

			repeat 
				wait(.1)
				DealDamage()
				BarrageVFX()
			until tick() - Starttime >= 5 or not char:FindFirstChild("Barraging") or char:FindFirstChild("UsingMove").Value == false

			anim:Stop()

			task.wait(BarrageRecoveryTime)

			char:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 16

			char.HumanoidRootPart.StandPosition.Position = Vector3.new(-2.5,1,1)

			char:WaitForChild("UsingMove").Value = false
			
		end
	end
end)
