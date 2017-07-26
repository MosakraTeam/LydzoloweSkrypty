display.setStatusBar(display.HiddenStatusBar)
local ciacho = display.newImage("ciastko.png", 100, 100)

local lewo=display.newRect(30, 460, 50, 50)

local t_lewo=display.newText("L", 30, 460 , native.systemFont, 50)
t_lewo:setTextColor(255, 0, 0)

local prawo=display.newRect(290, 460, 50, 50)

local t_prawo=display.newText("P", 290, 460, native.systemFont, 50)
t_prawo:setTextColor(255, 0, 0)

local gora=display.newRect(125, 460, 50, 50)

local t_gora=display.newText("G", 125 , 460, native.systemFont, 50)
t_gora:setTextColor(255, 0, 0)

local dol=display.newRect(195, 460, 50, 50)

local t_dol=display.newText("D", 195, 460, native.systemFont, 50)
t_dol:setTextColor(255, 0, 0)

function przesun_lewo(event)
    ciacho.x=ciacho.x-10
end

function przesun_prawo(event)
    ciacho.x=ciacho.x+10
end

function przesun_gora(event)
    ciacho.y=ciacho.y-10
end

function przesun_dol(event)
    ciacho.y=ciacho.y+10
end

lewo:addEventListener("touch", przesun_lewo)
prawo:addEventListener("touch",  przesun_prawo)
gora:addEventListener("touch", przesun_gora)
dol:addEventListener("touch", przesun_dol) 