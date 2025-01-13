local Character = require("src.entities.character")
local util = require("src.core.util")

---@overload fun(tbl: _, opts: Enemy)
local Enemy = {}
setmetatable(Enemy --[[@as table]], {
  __call = function(tbl, opts)
    return Enemy.new(opts)
  end
})

---@class Enemy: Character
---@field name string
---@field image love.Image
Enemy.proto = {
  name = "Missing",
}
setmetatable(Enemy.proto, { __index = Character.proto })

---@param opts Enemy
---@return Enemy
function Enemy.new(opts)
  setmetatable(opts, { __index = Enemy.proto })

  local imagePath = "assets/images/enemies/" .. util.removeSpaces(opts.name) .. ".png"
  opts.image = love.graphics.newImage(imagePath)

  return opts
end

return Enemy
