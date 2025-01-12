local character = require("src.entities.character")

local player = {
    chips = 20,
    max_damage = 7,
    passives = {}
}
setmetatable(player, character)

return player