ITEM.name = "Light Kevlar"
ITEM.model = Model("models/snowzgmod/payday2/armour/armourvest.mdl")
ITEM.description = "A piece of light kevlar"


ITEM.functions.Apply = {
    OnRun = function(itemTable)
        local client = itemTable.player
        client:SetAction("Applying Armor..", 10, function()
            ApplyLightArmor(client)
        end)
    end
}