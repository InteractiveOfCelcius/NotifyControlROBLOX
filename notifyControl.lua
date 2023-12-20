local notifyroblox = {}
	function notifyroblox:MakeInstance(plr) -- INSTANCE #<i9d213Ds11>, Instance for the notifys.
		local ScreenGui = Instance.new("ScreenGui")
		local NotifyBox = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")

		ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		NotifyBox.Name = "NotifyBox"
		NotifyBox.Parent = ScreenGui
		NotifyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotifyBox.BackgroundTransparency = 1.000
		NotifyBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotifyBox.BorderSizePixel = 0
		NotifyBox.Position = UDim2.new(0.726446271, 0, 0, 0)
		NotifyBox.Size = UDim2.new(0.268049806, 0, 0.987215936, 0)

		UIListLayout.Parent = NotifyBox
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		UIListLayout.Padding = UDim.new(0, 10)
		local InstanceN = {}
			function InstanceN.Notify(title, description, duration) -- NOTIFICATION #<n2aD2433FA211D>, Normal Notification without callback.
				local OnlyOneButton = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local Description = Instance.new("TextLabel")
				local TextButton = Instance.new("TextButton")
				local timer = Instance.new("TextLabel")

				OnlyOneButton.Name = "OnlyOneButton"
				OnlyOneButton.Parent = NotifyBox
				OnlyOneButton.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
				OnlyOneButton.BackgroundTransparency = 0.300
				OnlyOneButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				OnlyOneButton.Position = UDim2.new(0, 0, 0.871942461, 0)
				OnlyOneButton.Size = UDim2.new(0.999999881, 0, 0.128057554, 0)

				Title.Name = "Title"
				Title.Parent = OnlyOneButton
				Title.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
				Title.BackgroundTransparency = 0.150
				Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title.Size = UDim2.new(1, 0, 0.179775283, 0)
				Title.Font = Enum.Font.Code
				Title.Text = title
				Title.TextColor3 = Color3.fromRGB(143, 143, 143)
				Title.TextScaled = true
				Title.TextSize = 14.000
				Title.TextWrapped = true
				Title.TextXAlignment = Enum.TextXAlignment.Left

				Description.Name = "Description"
				Description.Parent = OnlyOneButton
				Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Description.BackgroundTransparency = 1.000
				Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Description.BorderSizePixel = 0
				Description.Position = UDim2.new(0.0181268752, 0, 0.179775283, 0)
				Description.Size = UDim2.new(0.978328168, 0, 0.57303369, 0)
				Description.Font = Enum.Font.Code
				Description.TextColor3 = Color3.fromRGB(255, 255, 255)
				Description.TextSize = 14.000
				Description.TextWrapped = true
				Description.TextXAlignment = Enum.TextXAlignment.Left
				Description.TextYAlignment = Enum.TextYAlignment.Top
				Description.TextScaled = true
				Description.Text = description

				TextButton.Parent = OnlyOneButton
				TextButton.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
				TextButton.BackgroundTransparency = 0.500
				TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.BorderSizePixel = 0
				TextButton.Position = UDim2.new(0.829996467, 0, 0.756894886, 0)
				TextButton.Size = UDim2.new(0.167182669, 0, 0.23595506, 0)
				TextButton.Font = Enum.Font.SourceSans
				TextButton.Text = "OK"
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextSize = 14.000

				timer.Name = "timer"
				timer.Parent = OnlyOneButton
				timer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				timer.BackgroundTransparency = 1.000
				timer.BorderColor3 = Color3.fromRGB(0, 0, 0)
				timer.BorderSizePixel = 0
				timer.Position = UDim2.new(0, 0, 0.752808988, 0)
				timer.Size = UDim2.new(0.0681114569, 0, 0.247191012, 0)
				timer.Font = Enum.Font.SourceSans
				timer.Text = "69"
				timer.TextColor3 = Color3.fromRGB(162, 162, 162)
				timer.TextScaled = true
				timer.TextSize = 14.000
				timer.TextWrapped = true

				local numLines = description:match("\n") and #description:split("\n") + 1 or 1
				OnlyOneButton.Size = UDim2.new(0.999999881, 0, numLines * 0.05, 0)

				local timeLeft = duration or 10
				timer.Text = tostring(timeLeft)
			
				TextButton.MouseButton1Click:Connect(function()
					OnlyOneButton:Destroy()
				end)
			
				for i = timeLeft, 1, -1 do
					wait(1)
					timer.Text = tostring(i)
				end
				OnlyOneButton:Destroy()
			end
		return InstanceN
	end

return notifyroblox