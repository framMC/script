local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "VernonX", Description = "Welcome to VernonX. Thank you for using our Script."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "https://www.roblox.com/library/12017847837/logo-VernonX", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "กำหลังโหลดสคริปกรุณารอสักครู่"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "https://www.roblox.com/library/12017847837/logo-VernonX", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "กำลังปรับทรัพยากรใน Server"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "default"}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "ตัวนี้จะเป็นตัวทดลองการใช้งานเท้านั้นยังเป็น Demo อยู่"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "default"}
)