---@overload fun(self: _, opts: Character)
local Character = {}
setmetatable(Character --[[@as table]], {
  __call = function(self, opts)
    return Character.new(opts)
  end
})

---Base class for character types
---@class Character
---@field chips integer
---@field max_damage integer
---@field passives Passive[]
Character.proto = {
  chips = 20,
  max_damage = 7,
  passives = {},
}

function Character.new(opts)
  setmetatable(opts, { __index = Character.proto })

  return opts
end

return Character
