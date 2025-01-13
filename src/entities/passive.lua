---@overload fun(tbl: _, opts: Passive)
local Passive = {}
setmetatable(Passive --[[@as table]], {
  __call = function(tbl, opts)
    return Passive.new(opts)
  end
})

---@class Passive
---@field name string
---@field desc string
---@field image love.Image
---@field cost integer
---@field opts? table
Passive.proto = {
  name = "Missing",
  desc = "This is a passive.",
  cost = 0,
  opts = {},
}

---@param opts Passive
---@return Passive
function Passive.new(opts)
  setmetatable(opts, { __index = Passive.proto })

  opts.image = love.graphics.newImage("assets/images/passives/" .. opts.name .. ".png")
  return opts
end

return Passive
