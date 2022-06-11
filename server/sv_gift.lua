local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("starter_gift", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    local HasThis = Player.Functions.GetItemByName('starter_gift')
    if HasThis then
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent('cpl_tearp:starteritem', source, item)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["starter_gift"], "remove")
        end
    else
        DropPlayer(source, 'Bitch.')
    end
end)

RegisterServerEvent('cpl_tearp:starteritem:giveitem', function(item, idfktbh)
    local Player = QBCore.Functions.GetPlayer(source)
    if idfktbh == 'ghjgjbvhfhfh' then 
        Player.Functions.AddItem(item, 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], "add")
    else
        DropPlayer(source, 'Bitch.')
    end
end)