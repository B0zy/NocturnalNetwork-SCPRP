CLASS.name = "Gensec Trainee"
CLASS.faction = FACTION_GSECURITY
CLASS.isDefault = true 


function CLASS:OnSet(client)
    Respawn(client)
end

function CLASS:OnSpawn(client)
    client:SetModel("models/player/guard_pack/guard_05.mdl")
end

CLASS_GTRAINEE = CLASS.index