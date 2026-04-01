local config = require('data.config')

AddEventHandler('onResourceStart', function(rsc)
    if rsc == cache.resource then
        SetConvarReplicated(('ox:printlevel:%s'):format(rsc), config.debug and 'debug' or 'info')
    end
end)