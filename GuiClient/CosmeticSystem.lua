local CosmeticFrame = script.Parent
local ItemFrame = CosmeticFrame:WaitForChild("ItemFrame")
local DisplayFrame = CosmeticFrame:WaitForChild("DisplayFrame")
local CollectionFrame = CosmeticFrame:WaitForChild("CollectionFrame")

local ShirtButton = CollectionFrame:WaitForChild("ShirtButton")
local MaskButton = CollectionFrame:WaitForChild("MaskButton")
local PantButton = CollectionFrame:WaitForChild("PantButton")
local EmoteButton = CollectionFrame:WaitForChild("EmoteButton")

local RS = game:GetService("ReplicatedStorage")
local CosmeticEventFolder = game:GetService("CosmeticSystem")
local GetData = game:GetService("GetData")

local Data = GetData:FireServer()
local TemplateItem = CosmeticFrame:WaitForChild("Templates"):WaitForChild("ItemTemplate")

local TierColorData = {
  
  "Common": (201, 194, 111),
  "Uncommon": (133, 212, 212),
  "Rare": (133, 212, 212),
  "Legendary": (248, 252, 0),
  "Mythic": (252, 13, 0)
  
}

function LoadItems(type)
  
  for i, item in ipairs(ItemFrame:GetChildren())
  
    item:Destroy()
  
  end
  
  for i, item in pairs(Data)
    
    if string.match(item, "Common") == true then
      
      local CloneItem = TemplateItem:Clone()
      CloneItem.TierBand.BackGroundColor3 = TierColorData["Common"]
      CloneItem.Label.Text = item
      CloneItem.Parent = ItemFrame
  
    elseif string.match(item, "Uncommon") == true then
  
      local CloneItem = TemplateItem:Clone()
      CloneItem.TierBand.BackGroundColor3 = TierColorData["Uncommon"]
      CloneItem.Label.Text = item
      CloneItem.Parent = ItemFrame
  
    elseif string.match(item, "Rare") == true then
  
      local CloneItem = TemplateItem:Clone()
      CloneItem.TierBand.BackGroundColor3 = TierColorData["Rare"]
      CloneItem.Label.Text = item
      CloneItem.ValueLabel.Visible = true
      CloneItem.Parent = ItemFrame
  
    elseif string.match(item, "Legendary") == true then
  
      local CloneItem = TemplateItem:Clone()
      CloneItem.TierBand.BackGroundColor3 = TierColorData["Legendary"]
      CloneItem.Label.Text = item
      CloneItem.ValueLabel.Visible = true
      CloneItem.Parent = ItemFrame
  
    elseif string.match(item, "Mythic") == true then
  
      local CloneItem = TemplateItem:Clone()
      CloneItem.TierBand.BackGroundColor3 = TierColorData["Mythic"]
      CloneItem.Label.Text = item
      CloneItem.ValueLabel.Visible = true
      CloneItem.Parent = ItemFrame
    
    end
  
  end
  
end)

ShirtButton.Activated:Connect(function()
    
    LoadItems("Shirt")
    
end)

PantButton.Activated:Connect(function()
    
    LoadItems("Pant")
    
end)

MaskButton.Activated:Connect(function()
    
    LoadItems("Mask")
    
end)

EmoteButton.Activated:Connect(function()
    
    LoadItems("Emote")
    
end)
