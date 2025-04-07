Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerId = GetPlayerServerId(PlayerId())
        local location = GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(playerPed))))
        local isInVehicle = IsPedInAnyVehicle(playerPed, false)
        local status = isInVehicle and "Driving" or "Walking"

        -- Set Discord Rich Presence
        SetDiscordAppId(123456789012345678) -- Replace with your Discord App ID
        SetDiscordRichPresenceAsset("your_asset") -- Replace with your large image key
        SetDiscordRichPresenceAssetText("FiveM RP")
        SetDiscordRichPresenceAssetSmall("small_asset") -- Optional: small image
        SetDiscordRichPresenceAssetSmallText("ESX Server")

        -- Set presence text
        SetRichPresence(("ID: %s | %s | %s"):format(playerId, status, location))

        Citizen.Wait(5000) -- Update every 5 seconds
    end
end)
