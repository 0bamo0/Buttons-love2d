Buttons = require('buttons')

function love.load()
    Buttons.new(10 , 300 , 50 , 60 , "Start")
    Buttons.new(500 , 300 , 100 , 60 , "Load")
    Buttons.new(350 , 300 , 40 , 60 , "Exit")
end

function love.update(dt)
    Buttons:checkHover()
end

function love.draw()
    Buttons:drawAll()
end