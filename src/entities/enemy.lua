local Character = require("src.entities.character")
local util = require("src.core.util")

local Enemy = {
    name = "",
    image = "",
}

--- Constructor for class Enemy
-- @param name string name of the enemy
-- @param[opt={}] passives table list of passives
-- @param[opt=0] chips number amount of chips
-- @param[opt=0] max_damage number maximum damage
-- @return Rnemy
function Enemy.new(name, passives, chips, max_damage)
    local self = setmetatable(Enemy, Character)

    self.name = name
    self.passives = passives or {}
    self.chips = chips or 0
    self.max_damage = max_damage or 0

    local imagePath = "assets/images/enemies/" .. util.removeSpaces(name) .. ".png"
    self.image = love.graphics.newImage(imagePath)
    return self
end

return Enemy
