fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'senganull'
version '1.0.0'

dependencies {
    'qb-core',
    'qb-menu',
    'ox_lib'
}

shared_scripts {
    '@ox_lib/init.lua',
    '@qb-core/shared/locale.lua'
}

client_scripts {
    'client/cl_main.lua',
    'client/qb_example.lua',
    'clien/ox_example.lua'
}

server_scripts {
    'server/sv_main.lua'
}