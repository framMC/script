local function callback(Text)
	if Text == "ไม่จำเป็น" then
		
	elseif Text == ("ลดพื้นผิวกันเเหลก") then
	   loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
	end
	end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "Script AntiLag";
	Text = "ตัวลดพื้นผิวเเละลดเเหลกในการเล่นเกม เเนะนำให้ใช้งาน V2";
	Icon = "rbxassetid://240664703";
	Duration = 100;
	Button1 = "ลดพื้นผิวกันเเหลก";
	Button2 = "ไม่จำเป็น";
	Callback = NotificationBindable;
})
