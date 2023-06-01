local RS = game:GetService("ReplicatedStorage")
local CosmeticEventFolder = RS:WaitForChild("CosmeticSystem")
local GetData = CosmeticEventFolder:WaitForChild("GetData")

local PlayerService = game:GetService("Players")
local DS = game:GetService("DatastoreService")
local CollectionData = DS:GetDatastore("Collections")

local Data = {
	
	"Common Baller Shirt",
	"Uncommon KRION Top",
	"Rare Neckbreaker Top",
	"Legendary PYTHON Jacket",
	"Mythic BETA Jacket",
	"Rare Navraj Top"
	
}

Players.PlayerAdded:Connect(function(plr)

GetData.OnServerEvent:Connect(function(plr)
	
	GetData:FireClient(plr, Data)
	
end)
