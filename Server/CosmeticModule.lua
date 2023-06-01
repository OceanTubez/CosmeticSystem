local module = {}


function module.GetData(plr)

	local CollectionFolder = plr:WaitForChild("CollectionDataFolder")
	local DataHolder = CollectionDataFolder:WaitForChild("DataHolder")
	
	return DataHolder.Value

end)

return module