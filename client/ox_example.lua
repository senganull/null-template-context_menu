-- メニューの登録はスクリプト読み込み時に一度だけ行えばOKです
-- 1. メインメニューの登録 (Register Main Menu)
lib.registerContext({
    id = 'ox_learning_main', -- メニューの一意なID
    title = 'Ox Lib Menu Example',
    options = {
        {
            title = 'Simple Notification',
            description = 'Click here to test ox_lib notify',
            icon = 'bell',
            onSelect = function()
                -- イベントを介さず、直接関数を実行できるのがox_libの強みです
                lib.notify({
                    title = 'Notification',
                    description = 'Hello from Ox Context Menu!',
                    type = 'success'
                })
            end
        },
        {
            title = 'Open Sub Menu',
            description = 'Navigate to the nested menu',
            icon = 'arrow-right',
            menu = 'ox_learning_sub', -- IDを指定するだけでサブメニューへ遷移 (Link to Sub Menu)
            arrow = true
        },
        {
            title = 'Server Event Test',
            description = 'Trigger a server event',
            icon = 'server',
            serverEvent = 'learning-menus:server:testLog', -- サーバーイベントを直接指定可能
            args = { type = 'test_log', msg = 'Clicked from Ox Menu' }
        }
    }
})

-- 2. サブメニューの登録 (Register Sub Menu)
lib.registerContext({
    id = 'ox_learning_sub',
    title = 'Sub Menu Options',
    menu = 'ox_learning_main', -- 親メニューのIDを指定すると「戻る」ボタンが自動生成されます
    options = {
        {
            title = 'Disabled Option',
            description = 'You cannot click this',
            disabled = true -- 無効化 (Disabled)
        },
        {
            title = 'Give Weapon (Test)',
            icon = 'gun',
            onSelect = function()
                print("Weapon given logic would go here")
            end
        }
    }
})

-- 3. イベントハンドラ: メニューを表示する
RegisterNetEvent('learning-menus:client:openOxMenu', function()
    -- 登録済みのIDを指定して表示 (Show the context)
    lib.showContext('ox_learning_main')
end)