local Lplr = game:GetService("Players").LocalPlayer
local Run = game:GetService("RunService")

Run.Stepped:connect(function()
	if getgenv().On2 == true then
		for i, x in pairs(Lplr.Character:GetDescendants()) do
			if x.Name == "Block" then
				x.Value = false
			end
			if
				x.Name == "Action"
				or x.Name == "Attacking"
				or x.Name == "Using"
				or x.Name == "hyper"
				or x.Name == "Hyper"
				or x.Name == "heavy"
				or x.Name == "KiBlasted"
				or x.Name == "Tele"
				or x.Name == "tele"
				or x.Name == "Killed"
				or x.Name == "Look"
				or x.Name == "Slow"
			then
				x:Destroy()
			end
			for i, x in pairs(Lplr.Character.UpperTorso:GetDescendants()) do
				if x.Name == "BodyVelocity" then
					x:Destroy()
				end
			end
			for i, x in pairs(Lplr.Character.RightFoot:GetDescendants()) do
				if x.Name == "BodyVelocity" then
					x:Destroy()
				end
			end
			for i, x in pairs(Lplr.Character.LowerTorso:GetDescendants()) do
				if x.Name == "BodyVelocity" then
					x:Destroy()
				end
			end
		end
	end
end)
