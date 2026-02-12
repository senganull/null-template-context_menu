local QBCore = exports['qb-core']:GetCoreObject()

--イベントハンドラ　メインメニュー
RegisterNetEvent('null-template-context_menu:client:openQBMenu', function()
    local menuList = {
        {
            header = "QB-Menu Example",
            isMenuHeader = true, --クリックできないヘッダー設定
            icon = "fa-slid fa-code"
        },
        {
            header = "Simple Notification",
            txt = "Click to see a notification",
            params = {
                event = "null-template-context_menu:client:showNotify",
                args = {
                    message = "Hello from QB-Menu",
                    type = "success"
                }
            }
        },
        {
            header = "Sub Menu Example",
            txt = "Go to sub-menu options >",
            params = {
                event = "learning-menus:client:openSubMenu",
            }
        },
        {
            header = "Close Menu",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(menuList)
end)

RegisterNetEvent('null-template-context_menu:client:openSubMenu', function()
    local subMenuList = {
        {
            header = "< Go Back",
            params = {
                event = "null-template-context_menu:client:openQBMenu"
            }
        },
        {
            header = "Sub Option 1",
            txt = "Just a placeholder",
            disabled = true
        }
    }
    exports['qb-menu']:openMenu(subMenuList)
end)

RegisterNetEvent('null-template-context_menu:client:showNotify', function(data)
    QBCore.Function.Notify(data.message, data.type)
end)