CLASS.name = "Research Enlisted"
CLASS.faction = FACTION_RESEARCH
CLASS.isDefault = false 

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSet(client)
    Respawn(client)
    client:Give("guthscp_keycard_lvl_1")
end



CLASS_RENLISTED = CLASS.index