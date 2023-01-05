local function callback(Text)
	if Text == "Agree" then
		
	elseif Text == ("Decline") then
		game:GetService("Players").LocalPlayer:Kick("Declined warning") 

	end
	end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification",  {
	Title = "WARNING";
	Text = "This game contains flashing lights and loud audios. Not suitable for anyone with photosensitive epilepsy.";
	Icon = "rbxassetid://240664703";
	Duration = 100;
	Button1 = "Agree";
	Button2 = "Decline";
	Callback = NotificationBindable;
})
