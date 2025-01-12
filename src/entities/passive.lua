local Passive = {
    name = "Passive",
    description = "This is a passive.",
    image = "",
    cost = 0,
}
Passive.__index = Passive

--- Constructor for class Passive
-- @param name string name of the passive
-- @param[opt=""] desc string description of the passive
-- @return Passive
function Passive.new(name, desc)
    local self = setmetatable({}, Passive)

    self.name = name
    self.description = desc or ""

    self.image = love.graphics.newImage("assets/images/placeholder/passive.png")
    -- imagePath = "assets/images/passives/" .. util.removeSpaces(name) .. ".png",
    -- image = love.graphics.newImage(imagePath)
    return self
end

return Passive
