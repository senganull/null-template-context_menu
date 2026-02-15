local QBCore = exports['qb-core']:GetCoreObject()

--クライアントからのイベント
-- from client/ox_example.lua
RegisterNetEvent('null-template-context_menu:server:testLog', function(data)
    local src = source

    print('Event Triggerd By Player ID:' .. src)

    if data then
        print('Type: ' .. tostring(data.type) .. '| Msg ' .. tostring(data.msg))
    end

    --処理完了をクライアントに通知(Send Response back to client)
    -- ox_libの通知機能をサーバーから直接呼び出すことも可能
    TriggerClientEvent('ox_lib:notify', src , {
        title = 'Server Response',
        description = 'Server received your event! Check F8 console.',
        type = 'success',
        duration = 5000
    })
end)