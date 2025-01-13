local enemies = require("src.entities.enemies")
local passives = require("src.entities.passives")

function love.load()

end

function love.update(dt)

end

function love.draw()
  for _, e in pairs(enemies) do
    love.graphics.draw(e.image, 0, 0)
  end

  for _, p in pairs(passives) do
    love.graphics.draw(p.image, 0, 250, 0, 0.10, 0.10)
    love.graphics.print(p.name, 0, 230)
    love.graphics.print(p.desc, 0, 240, 0, 2, 2)
  end
end
