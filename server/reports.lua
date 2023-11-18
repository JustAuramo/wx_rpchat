ESX = exports["es_extended"]:getSharedObject()

local function havePermission(xPlayer)
	local group = xPlayer.getGroup()
	if wx.AdminGroups[group] then
		return true
	end
	return false
end

ESX.RegisterServerCallback('wx_rpchat:getPlayerGroup', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(tonumber(source))
	if xPlayer then
		local playergroup = xPlayer.getGroup()
		cb(tostring(playergroup))
	else
		cb('user')
	end
end)




