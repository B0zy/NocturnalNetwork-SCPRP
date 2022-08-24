CLASS.name = "Research NCO"
CLASS.faction = FACTION_RESEARCH
CLASS.isDefault = true 
function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSet(client)
    Respawn(client)
end

CLASS_RNCO = CLASS.index