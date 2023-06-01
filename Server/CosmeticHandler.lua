local RS = game:GetService("ReplicatedStorage")
local CosmeticEventFolder = RS:WaitForChild("CosmeticSystem")
local GetData = CosmeticEventFolder:WaitForChild("GetData")

local Data = {
	
	"Common Baller Shirt",
	"Uncommon KRION Top",
	"Rare Neckbreaker Top",
	"Legendary PYTHON Jacket",
	"Mythic BETA Jacket",
	"Rare Navraj Top"
	
}

GetData.OnServerEvent:Connect(function(plr)
	
	GetData:FireClient(plr, Data)
	
end)
