CLASS.name = "Research CO"
CLASS.faction = FACTION_RESEARCH
CLASS.isDefault = true 


function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_RCO = CLASS.index



