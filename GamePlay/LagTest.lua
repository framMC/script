-- No Lag Script [Includes Anti-AFK] by VernonX
print("Started")
wait()
local tabz = game:GetService("VirtualUser")
while wait() do
game.Workspace.Parts:ClearAllChildren()
game:GetService("Players").LocalPlayer.Idled:connect(function()
tabz:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
tabz:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end 
