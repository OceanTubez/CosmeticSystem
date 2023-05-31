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

function LoadItems(type)
  
  for i, item in pairs(Data)
    
    if 
  
  end
  
end)

ShirtButton.Activated:Connect(function()
    
    LoadItems("Shirt")
    
end)
