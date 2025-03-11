-- take from the game "ZeN Samurai From TRB Team"


repeat
	task.wait()
until game:GetService("NetworkClient"):WaitForChild("ClientReplicator").Parent == nil
repeat
	task.wait()
until (function()
	print("Checking...")
	local _, pcall_result2 = pcall(function() -- Line 4
		game.MarketplaceService:PlayerOwnsAsset(game.Players.LocalPlayer, 1818)
	end)
	print(pcall_result2)
	if pcall_result2 and pcall_result2:find("HTTP 403") then
		print("Banned")
		return true
	end
	print("No.")
	return false
end)() == true
game.Players.LocalPlayer:Kick("kick message here")
spawn(function() 
	while wait() do
		workspace.CurrentCamera.CFrame = CFrame.new() * CFrame.Angles(math.rad(math.random(-2, 2)), math.rad(math.random(-15, 15)), 0)
	end
end)
game.Lighting.ColorCorrection.Enabled = true
workspace.lmao:Play()
