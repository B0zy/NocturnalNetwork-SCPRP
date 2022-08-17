ITEM.name = "D-Class ID"
ITEM.model = Model("models/gibs/metal_gib4.mdl")
ITEM.description = "A D-Class identification card with ID #%s, assigned to %s"

function ITEM:GetDescription()
    return string.format(self.description, self:GetData("id", "0000"), self:GetData("name", "nobody"))
end