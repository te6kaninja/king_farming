fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

name 'king_template'
author 'gadget2'
description 'An advanced script template for FiveM'
version '1.0.1'

shared_scripts {
    '@ox_lib/init.lua',
    'code/core/shared.lua',
    'code/modules/**/shared.lua',
    'code/modules/**/mods/shared/*.lua'
}

client_scripts {
    'code/core/client.lua',
    'code/modules/**/client.lua',
    'code/modules/**/mods/client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'code/core/server.lua',
    'code/modules/**/server.lua',
    'code/modules/**/mods/server/*.lua'
}

files {
    'locales/*.json',
    'data/**'
}

escrow_ignore {
    'locales/*.json',
    'data/**'
}

dependencies { 'ox_lib', 'oxmysql' }