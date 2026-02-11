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