local CosmeticFrame = script.Parent
local ItemFrame = CosmeticFrame:WaitForChild("ItemFrame")
local DisplayFrame = CosmeticFrame:WaitForChild("DisplayFrame")
local CollectionFrame = CosmeticFrame:WaitForChild("CollectionFrame")

local ShirtButton = CollectionFrame:WaitForChild("ShirtButton")
local MaskButton = MasksButton:WaitForChild("MaskButton")
local PantButton = PantButton:WaitForChild("PantButton")
local EmoteButton = EmoteButton:WaitForChild("EmoteButton")

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
  
  for i, item in pairs(Data)
    
    if item.split(_
  
  end
  
end)

ShirtButton.Activated:Connect(function()
    
    LoadItems("Shirt")
    
end)
