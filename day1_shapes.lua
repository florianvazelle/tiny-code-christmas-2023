-- title:   day1 - shapes
-- author:  florianvazelle
-- license: MIT License
-- version: 0.1
-- script:  lua

-- screen
local MAX_WIDTH = 240
local MAX_HEIGHT = 136

local CENTER_WIDTH = MAX_WIDTH / 2
local CENTER_HEIGHT = MAX_HEIGHT / 2

-- color
local BLUE = 9
local GREEN = 6
local BROWN = 3

function BOOT()
 cls(BLUE)
 
 t = 0
 height = 0
 color = GREEN
 
end

function TIC()

 if height < MAX_HEIGHT
 then
  line(CENTER_WIDTH - t, height, CENTER_WIDTH + t, height, color)
  t = t + 1
  height = height + 1

   if height % 20 == 0
   then
    t = t - (t / 3)
   end

   if height > (MAX_HEIGHT / 5) * 4
   then
    t = 5
    color = BROWN
  end
 end
	
end
