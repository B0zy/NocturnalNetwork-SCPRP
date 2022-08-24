CLASS.name = "Gensec CO"
CLASS.faction = FACTION_GSECURITY
CLASS.isDefault = false 

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSet(client)
    Respawn(client)
end

function CLASS:OnSpawn(client)
    local character = client:GetCharacter()
    local inventory = character:GetInventory()
    if(character) then
        character:SetModel("models/player/kerry/class_securety_2.mdl")
        ResetInv(inventory)
        client:Give("guthscp_keycard_lvl_3")
    end
end


CLASS_GSCO = CLASS.index