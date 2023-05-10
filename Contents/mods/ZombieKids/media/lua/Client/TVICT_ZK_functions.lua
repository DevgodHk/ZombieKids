TVICT_ZK = TVICT_ZK or {}
TVICT_ZK.OnCreate = TVICT_ZK.OnCreate or {}

function AcceptItemFuncForKidsFannyPack(container, item)
    return (item:getDisplayCategory() == "Tazos" or string.match(item:getDisplayName(), "Pok.mon") ~= nil)
end

--[[ local upperlayer_ISRadioAction_performTogglePlayMedia = ISRadioAction.performTogglePlayMedia
function ISRadioAction:performTogglePlayMedia()
    local starting = false
    if self:isValidTogglePlayMedia() then
        if not self.deviceData:isPlayingMedia() then
            starting = true
        end
    end
    upperlayer_ISRadioAction_performTogglePlayMedia(self)
    
    if starting and self:hasAllDoggoblinVideos() then 
        TVICT_ZK.launchCommand("Invoke",self.character:getX(), self.character:getY(), self.character:getZ(), self.character)
    end
end
--1 RM_92099489-4a20-4257-98e5-093957b6064e
--2 RM_7b57e2c3-94e3-4ead-b465-dd318eed18dd
--3 RM_8ced8f7b-34ff-4984-bd91-5bac4abe3cce
--4 RM_a838ac71-0eb0-403c-a583-71d2aa9a9661
function ISRadioAction:hasAllDoggoblinVideos()
    local isIt = false
    if self.deviceData:hasMedia() then
        local playedMedia = self.deviceData:getMediaData();
    
        if playedMedia then
            --if it is the right title
            if playedMedia:getTitleEN() == getText("RM_92099489-4a20-4257-98e5-093957b6064e") then
                isIt = true
            end
        end
    end
    return isIt
end]]

function TVICT_ZK.OnCreate.InvokeDoggoblin(items, result, player)
    TVICT_ZK.launchCommand("Invoke", player:getX(), player:getY(), player:getZ(), player)
end

function OnEat_InvokeDoggoblin(food, character, percent)
    TVICT_ZK.launchCommand("Invoke", character:getX(), character:getY(), character:getZ(), character);
end

InvokeDoggoblin_OnCreate = TVICT_ZK.OnCreate.InvokeDoggoblin
