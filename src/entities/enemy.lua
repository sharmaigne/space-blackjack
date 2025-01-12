local character = require("src.entities.character")
local util = require("src.core.util")

local enemy = {
    name = "",
    image = "",
}

function enemy.new(name)
    local self = setmetatable(enemy, character)
    self.name = name
    local imagePath = "assets/images/enemies/" .. util.removeSpaces(name) .. ".png"
    self.image = love.graphics.newImage(imagePath)
    return self
end

return enemy