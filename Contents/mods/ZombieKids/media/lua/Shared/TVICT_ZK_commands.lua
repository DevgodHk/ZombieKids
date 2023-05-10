TVICT_ZK = TVICT_ZK or {}
TVICT_ZK.ModKey = 'TVICTZK'
TVICT_ZK.Verbose = true

local function invokeDoggoblin(x, y, z)
    local invokeList = addZombiesInOutfit(x+1, y+1, z, 1, '', 0);
end


function TVICT_ZK.launchCommand(command, xVal, yVal, zVal, playerObj)
    if isClient() then
        sendClientCommand(playerObj, TVICT_ZK.ModKey, command, {x=xVal, y=yVal, z=zVal})
    elseif command == "Invoke" then
        invokeDoggoblin(xVal, yVal, zVal)
    end
end

function TVICT_ZK.OnClientCommand(mod, command, player, args)
    if mod ~= TVICT_ZK.ModKey then return end

    if command == "Invoke" then
        invokeDoggoblin(args.x, args.y, args.z)
    end
end
Events.OnClientCommand.Add(TVICT_ZK.OnClientCommand);


---- getCell -> getBuildingList -> 
---- getCell -> addToProcessItems(InventoryItem item)
