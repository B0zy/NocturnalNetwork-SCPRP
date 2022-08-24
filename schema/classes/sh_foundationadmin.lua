CLASS.name = "Foundation Administartion"
CLASS.faction = FACTION_FOUADM


function CLASS:OnSet(client)
    Respawn(client)
end

function CLASS:OnSpawn(client)
    
    local character = client:GetCharacter()
    local inventory = character:GetInventory()

    if(character) then
        ResetInv(inventory)
        inventory:Add()
        client:Give("guthscp_keycard_lvl_4")
    end

end


CLASS_FOUDADMN = CLASS.index