FACTION.name = "D-Class"
FACTION.description = "A D-Class"
FACTION.color = Color(255, 153, 0, 255)
FACTION.models = {"models/player/1000shells/class_d_asian.mdl", "models/player/1000shells/class_d_black.mdl", "models/player/1000shells/class_d_white.mdl", "models/player/kerry/class_d_1.mdl", "models/player/kerry/class_d_2.mdl", "models/player/kerry/class_d_3.mdl", "models/player/kerry/class_d_4.mdl", "models/player/kerry/class_d_5.mdl", "models/player/kerry/class_d_6.mdl", "models/player/kerry/class_d_7.mdl"}
FACTION.isDefault = true


function FACTION:OnCharacterCreated(client, character)
    local id = Schema:ZeroNumber(math.random(1, 9999), 4)
	local inventory = character:GetInventory()

    character:SetData("dcid", id)

    inventory:Add("dcid", 1, {
        name = character:GetName(),
        id = id
    })

end


FACTION_DCLASS = FACTION.index