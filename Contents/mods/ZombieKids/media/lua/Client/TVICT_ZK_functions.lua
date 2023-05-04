
function AcceptItemFuncForKidsFannyPack(container, item)
    return (item:getDisplayCategory() == "Tazos" or string.match(item:getDisplayName(), "Pok.mon") ~= nil)
end

