ITEM.name = "Heavy Kevlar"
ITEM.model = Model("models/snowzgmod/payday2/armour/armourfull.mdl")
ITEM.description = "A set of Heavy Kevlar"

ITEM.functions.Apply = {
    OnRun = function(itemTable)
        local client = itemTable.player
        client:SetAction("Applying Armor..", 20, function()
            ApplyHeavyArmor(client)
        end)
    end
}