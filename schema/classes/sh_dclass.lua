CLASS.name = "D-Class"
CLASS.faction = FACTION_DCLASS
CLASS.isDefault = true 
CLASS.SetModel = "models/player/guard_pack/guard_01.mdl"

function CLASS:OnSet(client)
    Respawn(client)
end


CLASS_DCLASS = CLASS.index