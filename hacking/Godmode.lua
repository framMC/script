local tool = script.Parent

local function onEquipped()
	local character = tool.Parent
	if not character then return end
	local forceField = character:FindFirstChildOfClass("ForceField") or Instance.new("ForceField")
	forceField.Parent = character
end

local function onUnequipped()
	local player = script.Parent
	if not player then return end
	local character = player.Character
	if not character then return end
	local forceField = character:FindFirstChildOfClass("ForceField")
	if forceField then forceField:Destroy() end
end

tool.Equipped:Connect(onEquipped)
tool.Unequipped:Connect(onUnequipped)
