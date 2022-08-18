AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()
        self:SetModel("models/props_c17/Lockers001a.mdl")
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_NONE)
        self:SetSolid(SOLID_VPHYSICS)

        local phys = self:GetPhysicsObject()

        if(phys:IsValid()) then
            
            phys:Wake()

        end
end


function ENT:Use(a, c) -- a = activater , c = caller

    local character = c:GetCharacter()
    local inventory = character:GetInventory()

    if(character:GetFaction() == FACTION_GSECURITY) then
        if(character:GetFlags("h") == true) then
            inventory:Add("heavyarmor", 1)
        else
            inventory:Add("lightarmor", 1)
        end
    else
        print("You are not part of gensec")
    end

end