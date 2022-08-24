CLASS.name = "Research CO"
CLASS.faction = FACTION_RESEARCH
CLASS.isDefault = true 


function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSet(client)
    Respawn(client)
end

function CLASS:OnSpawN(client)
    local character = client:GetCharacter()
    local inventory = character:GetInventory()
    if(character) then
        character:SetModel("models/1000shells/sci_boss/sci_boss.mdl")
        ResetInv(inventory)
        client:Give("guthscp_keycard_lvl_3")
    end
end


CLASS_RCO = CLASS.index



