
-- Calling to get items in player inventory and then removing items with v.id
function ResetInv(inventory)
    for k,v in pairs(inventory:GetItems()) do
        inventory:Remove(v.id)
    end
end

function ApplyLightArmor(client)
    client:SetArmor(math.min(client:Armor() + 50, 50))
    print(client:Armor())
end

function ApplyHeavyArmor(client)
    client:SetArmor(math.min(client:Armor() + 150, 150))
    print(client:Armor())
end


function Respawn(client) 
    client:Kill()
    client:Spawn()
end