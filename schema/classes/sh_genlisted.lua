CLASS.name = "Gensec Enlisted"
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
        character:SetModel("models/player/guard_pack/guard_05.mdl")
        ResetInv(inventory)
        inventory:Add("tfa_ins2_m9", 1)
        client:Give("guthscp_keycard_lvl_1")
    end
end

CLASS_GSENT = CLASS.index     
