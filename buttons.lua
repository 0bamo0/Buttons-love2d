Buttons = {}
Buttons.__index = Buttons
ActiveButtons = {}

function Buttons.new(x,y,w,h,label)
    local instance = setmetatable({}, Buttons)
    instance.x = x
    instance.y = y
    instance.width = w
    instance.height = h
    instance.label = label
    instance.isHovered = false
    table.insert(ActiveButtons, instance)
end


function Buttons.update(dt)
    for _,button in ipairs(ActiveButtons) do
        local mx,my = love.mouse.getPosition()
        if mx > button.x and mx < button.x + button.width and my > button.y and my < button.y + button.height then
            button.isHovered = true
        else
            button.isHovered = false
        end
    end
end

function Buttons.drawAll()
    for _, button in ipairs(ActiveButtons) do
        if button.isHovered == true then
            love.graphics.rectangle("line" , button.x , button.y , button.width , button.height)
        else
            love.graphics.rectangle("fill" , button.x , button.y , button.width , button.height)
        end
    end
end

function Buttons:pressed(x,y,k)
    for _, button in ipairs(ActiveButtons) do
        if x > button.x and x < button.x + button.width and y > button.y and y < button.y + button.height then
            print(button.label)
        end
    end
end

return Buttons