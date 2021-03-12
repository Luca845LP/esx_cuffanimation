ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_cuffanimation:startArrest')
AddEventHandler('esx_cuffanimation:startArrest', function(target)
	local targetPlayer = ESX.GetPlayerFromId(target)

	TriggerClientEvent('esx_cuffanimation:arrested', targetPlayer.source, source)
	TriggerClientEvent('esx_cuffanimation:arrest', source)
end)
