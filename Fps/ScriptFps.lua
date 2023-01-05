local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "VernonX", Description = "ยินดีต้อนรับสู่ VernonX"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 8, Type = "image"},
    {Image = "https://www.roblox.com/library/12017847837/logo-VernonX", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "กำหลังโหลดสคริปกรุณารอสักครู่"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 7, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "กำลังปรับ FPS ให้ลื่นขึ้น"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "Creator By VernonStudio And FramMC"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
