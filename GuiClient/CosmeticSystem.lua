local CosmeticFrame = script.Parent
local ItemFrame = CosmeticFrame:WaitForChild("Items")
-- local DisplayFrame = CosmeticFrame:WaitForChild("Display")
local CollectionFrame = CosmeticFrame:WaitForChild("Collection")

local ShirtButton = CollectionFrame:WaitForChild("ShirtButton")
-- local MaskButton = CollectionFrame:WaitForChild("MaskButton")
-- local PantButton = CollectionFrame:WaitForChild("PantButton")
-- local EmoteButton = CollectionFrame:WaitForChild("EmoteButton")

local RS = game:GetService("ReplicatedStorage")
local CosmeticEventFolder = RS:WaitForChild("CosmeticSystem")
local GetData = CosmeticEventFolder:WaitForChild("GetData")

local Data = nil
local TemplateItem = CosmeticFrame:WaitForChild("Templates"):WaitForChild("ItemTemplate")

GetData:FireServer()

GetData.OnClientEvent:Connect(function(retrieveddata)
	
	Data = retrieveddata
	
end)

local TierColorData = {

	Common = Color3.fromRGB(201, 194, 111),
	Uncommon = Color3.fromRGB(133, 212, 212),
	Rare = Color3.fromRGB(133, 212, 212),
	Legendary = Color3.fromRGB(248, 252, 0),
	Mythic = Color3.fromRGB(252, 13, 0)

}

function LoadItems(equipment)

	for i, item in ipairs(ItemFrame:GetChildren()) do
		
		if item.Name ~= "UIGridLayout" then
			
			item:Destroy()
			
		end
		
	end
	
	for i, item in pairs(Data) do

		if string.sub(item, 1, 6) == "Common" then

			local CloneItem = TemplateItem:Clone()
			CloneItem.TierBand.BackgroundColor3 = TierColorData["Common"]
			CloneItem.Label.Text = item
			CloneItem.Label.TextStrokeColor3 = TierColorData["Common"]
			CloneItem.Visible = true
			CloneItem.Parent = ItemFrame

		elseif string.sub(item, 1, 8) == "Uncommon" then

			local CloneItem = TemplateItem:Clone()
			CloneItem.TierBand.BackgroundColor3 = TierColorData["Uncommon"]
			CloneItem.Label.Text = item
			CloneItem.Label.TextStrokeColor3 = TierColorData["Uncommon"]
			CloneItem.Visible = true
			CloneItem.Parent = ItemFrame

		elseif string.sub(item, 1, 4) == "Rare" then

			local CloneItem = TemplateItem:Clone()
			CloneItem.TierBand.BackgroundColor3 = TierColorData["Rare"]
			CloneItem.Label.Text = item
			CloneItem.Label.TextStrokeColor3 = TierColorData["Rare"]
			CloneItem.ValueLabel.Visible = true
			CloneItem.Visible = true
			CloneItem.Parent = ItemFrame

		elseif string.sub(item, 1, 9) == "Legendary" then

			local CloneItem = TemplateItem:Clone()
			CloneItem.TierBand.BackgroundColor3 = TierColorData["Legendary"]
			CloneItem.Label.Text = item
			CloneItem.Label.TextStrokeColor3 = TierColorData["Legendary"]
			CloneItem.ValueLabel.Visible = true
			CloneItem.Visible = true
			CloneItem.Parent = ItemFrame

		elseif string.sub(item, 1, 6) == "Mythic" then

			local CloneItem = TemplateItem:Clone()
			CloneItem.TierBand.BackgroundColor3 = TierColorData["Mythic"]
			CloneItem.Label.Text = item
			CloneItem.Label.TextStrokeColor3 = TierColorData["Mythic"]
			CloneItem.ValueLabel.Visible = true
			CloneItem.Visible = true
			CloneItem.Parent = ItemFrame

		end

	end
	
end

ShirtButton.Activated:Connect(function()
	
	print("got it")
	
	LoadItems("Shirt")
	
end)

--[[

PantButton.Activated:Connect(function()

	LoadItems("Pant")

end)

MaskButton.Activated:Connect(function()

	LoadItems("Mask")

end)

EmoteButton.Activated:Connect(function()

	LoadItems("Emote")

end)

]]--
