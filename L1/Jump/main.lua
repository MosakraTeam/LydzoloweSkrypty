display.setStatusBar(display.HiddenStatusBar)
local physics = require "physics"
physics.start()

local podloga = display.newImage( "belka.png", 160, 460 )
    physics.addBody(podloga, "static")

local ciastko = display.newImage("ciastko.png", 160, 300)
    physics.addBody(ciastko)

local function klik(event)
    if(event.phase == "began") then
        if(event.x < ciastko.x) then
        --lewo
            ciastko:setLinearVelocity(-30, -200)
        else
        --prawo
            ciastko:setLinearVelocity(30, -200)
        end        
    end    
end
Runtime:addEventListener("touch", klik)