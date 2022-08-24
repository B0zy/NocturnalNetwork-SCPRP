CLASS.name = "Research Trainee"
CLASS.faction = FACTION_RESEARCH
CLASS.isDefault = true 


function CLASS:OnSet(client)
    Respawn(client)
end

CLASS_RTRAINEE = CLASS.index