local passive = require("src.entities.passive")

local passive_list = {
    { name = "Gambler's Fallacy", desc = "3 successive rolls below 3 will guarantee a roll of 6" },
}

local passives = {}
for _, p in pairs(passive_list) do
    local new_passive = passive.new(p.name, p.desc)
    passives[p.name] = new_passive
end

--- NOTE: should we have a separate file for each passive? or should we just keep it in one file?

passives["Gambler's Fallacy"].streak = 0
passives["Gambler's Fallacy"].pre_roll = function(self, gameState)
    local roll = gameState.last_roll
    if roll < 3 then
        self.streak = self.streak + 1
    else
        self.streak = 0
    end

    if self.streak == 3 then
        return 6
    end

    return roll
end

return passives
