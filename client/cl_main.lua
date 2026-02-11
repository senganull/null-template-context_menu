local QBCore = exports['qb-core']:GetCoreObject()

--Notification Helper Function
local function SendNotify(msg,type)
    if type == 'success' then
        QBCore.Functions.Notify(msg, 'success')
    elseif type == 'error' then
        QBCore.Functions.Notify(msg, 'error')
    else
        QBCore.Functions.Notify(msg, 'primary')
    end
end

-- qb-menu
RegisterCommand('test_qbmenu', function()
    TriggerEvent('null-template-context_menu:client:openQBMenu')
    SendNotify('Opening QBMenu', 'primary')
end, false)

-- ox-menu
RegisterCommand('test_oxmenu', function ()
    TriggerEvent('null-template-context_menu:client:openOXMenu')
    SendNotify('Opening OXMenu', 'primary')
end, false)

RegisterKeyMapping('test_qbmenu', 'Open QB Menu', 'keyboard', 'F5')
RegisterKeyMapping('test_oxmenu', 'Open OX Menu', 'keyboard', 'F6')