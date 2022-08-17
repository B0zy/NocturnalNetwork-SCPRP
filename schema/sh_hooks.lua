
-- Calling to get items in player inventory and then removing items with v.id
function ResetInv(inventory)
    for k,v in pairs(inventory:GetItems()) do
        inventory:Remove(v.id)
    end
end

