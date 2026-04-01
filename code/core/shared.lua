lib.locale()

-- This creates a global variable called the second part of the resouce name (after the _)
_ENV[select(2, string.strsplit('_', cache.resource))] = {
    exports = setmetatable({}, {
        __newindex = function(_, key, value)
            if type(value) == 'function' then
                exports(key, value)
            end
        end
    }),
    config = require('data.config')
    -- Shared values
}