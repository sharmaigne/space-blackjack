local passive = {
    name = "Passive",
    description = "This is a passive.",
    image = "",
    cost = 0,
}
passive.__index = passive

--- Constructor for passive
-- @param name string name of the passive
-- @param[opt=""] desc string description of the passive
-- @return passive
function passive.new(name, desc)
    local self = setmetatable(passive, passive)

    self.name = name
    self.description = desc or ""

    self.image = love.graphics.newImage("assets/images/placeholder/passive.png")
    -- imagePath = "assets/images/passives/" .. util.removeSpaces(name) .. ".png",
    -- image = love.graphics.newImage(imagePath)
    return self
end

return passive
