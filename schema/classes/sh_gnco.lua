CLASS.name = "Gensec NCO"
CLASS.faction = FACTION_GSECURITY
CLASS.isDefault = false 

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSet(client)
    local character = client:GetCharacter()
    local inventory = character:GetInventory()
    if(character) then
        character:SetModel("models/player/kerry/class_securety.mdl")
        ResetInv(inventory)
        inventory:Add("tfa_ins2_g36c", 1)
        inventory:Add("heavyarmor", 1)
    end
end

function CLASS:OnSpawn(client)
    local character = client:GetCharacter()
    local inventory = character:GetInventory()

    if(character) then
        inventory:Add("tfa_ins2_g36c", 1) 
    end
end



CLASS_GSNCO = CLASS.index

