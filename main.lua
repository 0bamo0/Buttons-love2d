Buttons = require('buttons')

function love.load()
    local m = 50
    local y = 0
    for i = 1, 3, 1 do
        Buttons.new(300 , y + 50 , 50 , 50,"Hello"..i)
        y = y + 50 + m
    end
end

function love.update(dt)
    Buttons.update(dt)
end

function love.draw()
    Buttons.drawAll()
end

function love.mousepressed(x,y,k)
    Buttons:pressed(x,y,k)
end