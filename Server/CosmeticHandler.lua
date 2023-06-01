local RS = game:GetService("ReplicatedStorage")
local CosmeticModule = require(script.Parent:WaitForChild("CosmeticModule"))
local CosmeticEventFolder = RS:WaitForChild("CosmeticSystem")
local GetData = CosmeticEventFolder:WaitForChild("GetData")

local PlayerService = game:GetService("Players")
local DS = game:GetService("DatastoreService")
local CollectionData = DS:GetDatastore("Collections")

Players.PlayerAdded:Connect(function(plr)

	local CollectionDataFolder = Instance.new("Folder")
	CollectionDataFolder.Name = "CollectionDataFolder"
	CollectionDataFolder.Parent = plr
	
	local DataHolder = Instance.new("StringValue")
	DataHolder.Name = "DataHolder"
	DataHolder.Value = nil
	
	local DataRetrieved = nil
	
	local success, errorm = pcall(
	
		DataRetrieved = CollectionData.GetAsync(plr.UserId)
		
		DataHolder.Value = DataRetrieved
	
	)
	
	if not success then
		
		warn(errorm)
		
	end

end)

Players.PlayerRemoving:Connect(function(plr)

	local CollectionDataFolder = plr:WaitForChild("CollectionDataFolder")
	local DataHolder = CollectionDataFolder:WaitForChild("DataHolder")
	
	local success, errorm = pcall(
	
		CollectionData.SetAsync(plr.UserId, DataHolder.Value)
	
	)
	
	if not success then
		
		warn(errorm)
		
	end
	
end)

GetData.OnServerEvent:Connect(function(plr)
	
	GetData:FireClient(plr, CosmeticModule.GetData(plr))
	
end)
