local config = require 'data.fruitpicker'

-- Misc

local function addBlip(x, y, z, data)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, data.sprite)
    SetBlipColour(blip, data.colour)
    SetBlipScale(blip, data.scale)
    SetBlipDisplay(blip, 4)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(data.label)
    EndTextCommandSetBlipName(blip)
end

-- Boss Interaction Handler

CreateThread(function()
    local boss = config.boss
    local coords = boss.coords

    -- Ped handling
    local pedModel = joaat(boss.ped)
    lib.requestModel(pedModel)

    local ped = CreatePed(0, pedModel, coords.x, coords.y, coords.z, boss.heading, false, false)
    SetModelAsNoLongerNeeded(pedModel)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, boss.scenario, 0, true)

    -- Interaction
    addBlip(coords.x, coords.y, coords.z, boss.blip)
end)