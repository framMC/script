local function callback(Text)
	if Text == "ไม่จำเป็น" then
		
	elseif Text == ("เปิดลดการ Load พื้นผิว") then
		game:GetService("Players").loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()

	end
	end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "New AntiLag";
	Text = "ลดการเเหลกจากการโหลดในเกม ลดพื้นผิว เเนะนำให้ใช้งาน V2";
	Icon = "rbxassetid://240664703";
	Duration = 100;
	Button1 = "เปิดลดการ Load พื้นผิว";
	Button2 = "ไม่จำเป็น";
	Callback = NotificationBindable;
})
