local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "Notify", Description = "ยินดีต้อนรับกลับมา!!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "https://www.roblox.com/library/12017847837/logo-VernonX", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
wait(1)
Notification:Notify(
    {Title = "Notify", Description = "กำลังโหลดสคริปกรุณารอสักครู่..."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 7, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "Notify", Description = "กำลังปรับทรัพยากรทั้งหมด"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 9, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "Notify", Description = "เเนะนำหากมือถือหรือคอมพิวเตอร์ของคุณช้าลงหรือค้างให้เเนะนำกดใช้งานตัวนี้เพื่อให้เครื่องของคุณลื่นขึ้นเเละลดพื้นผิวลงในการเล่นเกม *เเนะนำ!!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 200, Type = "option"}
)
wait(1)
Notification:Notify(
    {Title = "Notify", Description = "สร้างโดย MoonlightdevX"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 11, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
