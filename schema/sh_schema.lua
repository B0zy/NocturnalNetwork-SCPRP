-- [[ Schema Base Config ]] --

Schema.name = "SCP Serious Roleplay"
Schema.description = "A Serious Roleplay Server, with custom content."
Schema.community = "Nocturnal Network"

Schema.author = "Bozy"
Schema.developers = "Bozy"


-- [[ Schema Config ]] -- 

Schema.MainColor = Color(50, 150, 200)
Schema.MainColorSelect = Color(130,188,235)


function Schema:ZeroNumber(number, length)
    local amount = math.max(0, length - string.len(number))
    return string.rep("0", amount)..tostring(number)
end

function Schema:CanPlayerUseBusiness(ply, id)
    return false
end


ix.util.Include("sv_schema.lua")

ix.util.Include("sh_hooks.lua")