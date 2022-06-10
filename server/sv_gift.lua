local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("starter_gift", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('cpl_tearp:starteritem', source, item)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["starter_gift"], "remove")
    end
end)

RegisterServerEvent('cpl_tearp:starteritem:giveitem', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item, 1)
end)