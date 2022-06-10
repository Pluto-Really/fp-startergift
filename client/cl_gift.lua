RegisterNetEvent('cpl_tearp:starteritem', function()
    local item_array = { 'phone', 'carstereo', 'carstereo', 'boombox', 'cashappcard', 'joint', 'nitrous', 'pistol_ammo', 'advancedrepairkit', 'advancedlockpick', 'lockpick', 'armor', 'firework1', 'firework2', 'firework3', 'firework4', 'bandage', 'painkillers', 'fitbit' }
    local ped = GetPlayerPed(PlayerId())
    local pedcoords = GetEntityCoords(ped)
    if not HasNamedPtfxAssetLoaded("scr_rcbarry1") then
        RequestNamedPtfxAsset("scr_rcbarry1")
        while not HasNamedPtfxAssetLoaded("scr_rcbarry1") do
            Wait(1)
        end
    end
    UseParticleFxAssetNextCall("scr_rcbarry1")
    local part = StartParticleFxLoopedAtCoord('scr_alien_teleport', pedcoords.x, pedcoords.y, pedcoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    for i,v in ipairs(item_array ) do
        itemchance = math.random(0,1)
        if itemchance == 1 then
            TriggerEvent('cpl_tearp:starteritem:item', v)
        end
    end
end)

RegisterNetEvent("cpl_tearp:starteritem:item", function(v)
    local idfktbh = 'ghjgjbvhfhfh'
    TriggerServerEvent('cpl_tearp:starteritem:giveitem', v, idfktbh)
end)