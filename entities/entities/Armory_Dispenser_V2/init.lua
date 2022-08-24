AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/props_c17/Lockers001a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_NONE)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetUseType(SIMPLE_USE)

    local phys = self:GetPhysicsObject()

    if(phys:IsValid()) then
        phys:Wake()
    end
end


function ENT:Use(_, caller)


    -- Getting Helix stuff
    local char = caller:GetCharacter()
    local inv = char:GetInventory()
    local ply = char:GetPlayer()

    -- Giving the Player the item to their inventory 

    if(char:GetFaction() == FACTION_GSECURITY) then
        ply:SetAction("Getting Armor..", 5)
        ply:DoStaredAction(Entity, inv:Add("lightarmor", 1), 5)
    else
        ply:ChatNotifyLocalized("You are not part of Gensec")
    end


end