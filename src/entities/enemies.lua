local enemy = require("src.entities.enemy")

-- name may have spaces
local enemy_list = {
    { name = "Spaceman", passives = {}, chips = 15, max_damage = 5 }
}

local enemies = {}
for _, e in ipairs(enemy_list) do
    table.insert(enemies, enemy.new(e.name))
end

return enemies
