local enemies = require("src.entities.enemies")

function love.load()

end

function love.update(dt)

end

function love.draw()
    for _, e in ipairs(enemies) do
        love.graphics.draw(e.image, 0, 0)
    end
end

