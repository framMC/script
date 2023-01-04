local crumbleCount = math.floor(#game.Workspace.Map.Destroyable:GetChildren() * 0.2)
	for crumble = 0, crumbleCount, 1 do
			local chosenBlock = game.Workspace.Map.Destroyable:GetChildren()[math.random(1, #game.Workspace.Map.Destroyable:GetChildren())]
			chosenBlock.Color = Color3.fromRGB(255,0,0)
			chosenBlock.Parent = game.Workspace.Map.Destroyed
			delay(0.5, function()
				chosenBlock.CanCollide = false
				chosenBlock:Destroy()
			end)
		end
