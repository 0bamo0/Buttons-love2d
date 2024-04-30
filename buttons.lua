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

function Buttons.checkHover()
    for _,Buttons in ipairs(ActiveButtons) do
        local mx,my = love.mouse.getPosition()
        if mx > Buttons.x and mx < Buttons.x + Buttons.width and my > Buttons.y and my < Buttons.y + Buttons.height then
            print(Buttons.label , mx , Buttons.isHovered)
            Buttons.isHovered = true
        end
        print(Buttons.isHovered)
    end
end

function Buttons.drawAll()
    for _, button in ipairs(ActiveButtons) do
        if Buttons.isHovered then
            love.graphics.rectangle("fill" , button.x , button.y , button.width , button.height)
        else
            love.graphics.rectangle("fill" , button.x , button.y , button.width , button.height)
        end
    end
end

return Buttons