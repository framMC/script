-- สร้าง ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- สร้างปุ่มวงกลม
local circleButton = Instance.new("ImageButton")
circleButton.Size = UDim2.new(0, 50, 0, 50)
circleButton.Position = UDim2.new(0.1, 0, 0.1, 0)
circleButton.Image = "rbxassetid://your_circle_image_asset_id"  -- เปลี่ยนไปตาม asset ที่คุณมี
circleButton.Parent = screenGui

-- สร้างหน้าต่างสี่เหลี่ยม
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
mainFrame.Visible = false
mainFrame.Parent = screenGui

-- สร้างปุ่ม Switch
local switchButton = Instance.new("TextButton")
switchButton.Size = UDim2.new(0, 100, 0, 50)
switchButton.Position = UDim2.new(0.5, -50, 0.3, 0)
switchButton.Text = "Toggle Attack"
switchButton.Parent = mainFrame

local attackEnabled = false

switchButton.MouseButton1Click:Connect(function()
    attackEnabled = not attackEnabled
    if attackEnabled then
        switchButton.Text = "Attack: On"
    else
        switchButton.Text = "Attack: Off"
    end
end)

-- สร้างปุ่ม Hide
local hideButton = Instance.new("TextButton")
hideButton.Size = UDim2.new(0, 100, 0, 50)
hideButton.Position = UDim2.new(0.5, -50, 0.6, 0)
hideButton.Text = "Hide"
hideButton.Parent = mainFrame

hideButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    circleButton.Visible = true
end)

-- แสดงข้อมูลผู้เล่น
local playerName = Instance.new("TextLabel")
playerName.Size = UDim2.new(0, 200, 0, 50)
playerName.Position = UDim2.new(0.5, -100, 0.1, 0)
playerName.Text = "Player: " .. game.Players.LocalPlayer.Name
playerName.TextColor3 = Color3.new(1, 1, 1)
playerName.BackgroundTransparency = 1
playerName.Parent = mainFrame

-- การทำให้วงกลมลอยและลากได้
local dragging = false
local dragInput, mousePos, framePos

circleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        mousePos = input.Position
        framePos = circleButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

circleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - mousePos
        circleButton.Position = UDim2.new(
            framePos.X.Scale, framePos.X.Offset + delta.X,
            framePos.Y.Scale, framePos.Y.Offset + delta.Y
        )
    end
end)

-- เมื่อคลิกที่ปุ่มวงกลม ให้แสดงหน้าต่างสี่เหลี่ยม
circleButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = true
    circleButton.Visible = false
end)

-- สร้างปุ่มสำหรับปิด UI
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 100, 0, 50)
closeButton.Position = UDim2.new(0.5, -50, 0.8, 0)
closeButton.Text = "Close UI"
closeButton.Parent = mainFrame

closeButton.MouseButton1Click:Connect(function()
    screenGui.Enabled = false  -- ซ่อน ScreenGui ทั้งหมด
end)

-- สร้างปุ่มสำหรับเปิด UI (อยู่นอก screenGui)
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 100, 0, 50)
openButton.Position = UDim2.new(0.9, -100, 0.1, 0)
openButton.Text = "Open UI"
openButton.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

openButton.MouseButton1Click:Connect(function()
    screenGui.Enabled = true  -- แสดง ScreenGui อีกครั้ง
end)

-- กำหนดระยะทางที่ใช้ในการโจมตี (4 เมตร)
local attackRange = 4

-- ฟังก์ชันตรวจสอบระยะและโจมตี mob
local function checkAndAttackMob()
    if attackEnabled then
        -- ค้นหา mob ที่อยู่ใน workspace
        for _, mob in pairs(workspace:GetChildren()) do
            if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob:FindFirstChild("HumanoidRootPart") then
                -- ตรวจสอบระยะระหว่างผู้เล่นกับ mob
                local distance = (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                if distance <= attackRange then
                    -- ทำการโจมตี mob
                    mob.Humanoid:TakeDamage(10)  -- กำหนดค่าความเสียหาย (ปรับเปลี่ยนได้)
                end
            end
        end
    end
end

-- สร้าง loop ในการตรวจสอบระยะทุกๆ 0.5 วินาที
while true do
    wait(0.5)
    checkAndAttackMob()
end
