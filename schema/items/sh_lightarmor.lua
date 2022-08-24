ITEM.name = "Light Kevlar"
ITEM.model = Model("models/snowzgmod/payday2/armour/armourvest.mdl")
ITEM.description = "A piece of light kevlar"


ITEM.functions.Apply = {
    OnRun = function(itemTable)
        local client = itemTable.player
        client:SetArmor(math.min(client:Armor() + 50, 100))
        print(client:Armor())
    end
}