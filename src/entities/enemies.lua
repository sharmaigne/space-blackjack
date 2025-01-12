local Enemy = require("src.entities.enemy")

-- name may have spaces
local enemy_list = {
    { name = "Spaceman", passives = {}, chips = 15, max_damage = 5 }
}

local enemies = {}
for _, e in ipairs(enemy_list) do
    local new_enemy = Enemy.new(e.name, e.passives, e.chips, e.max_damage)
    enemies[e.name] = new_enemy
end

return enemies
