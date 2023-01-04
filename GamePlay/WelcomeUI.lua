local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "VernonX", Description = "Welcome to VernonX. Thank you for using our Script."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "กำหลังโหลดสคริปกรุณารอสักครู่"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "กำลังปรับทรัพยากรใน Server"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "ตัวนี้จะเป็นตัวทดลองการใช้งานเท้านั้นยังเป็น Beta อยู่"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "เเนะนำหากมือถือหรือคอมพิวเตอร์ของคุณช้าลงหรือค้างให้เเนะนำกดใช้งานตัวนี้เพื่อให้เครื่องของคุณลื่นขึ้น !!เเนะนำ"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 50, Type = "option"}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "Creator By VernonStudio"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 15, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "VernonX", Description = "ขอบคุณสำหรับการสนับสนุนจากเรา"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "default"}
)
