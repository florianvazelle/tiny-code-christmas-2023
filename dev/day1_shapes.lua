-- screen constants
MAX_WIDTH = 240
MAX_HEIGHT = 136
CENTER_WIDTH = MAX_WIDTH / 2
CENTER_HEIGHT = MAX_HEIGHT / 2

-- color constants
BLUE = 9
GREEN = 6
BROWN = 3

function BOOT()
    cls(BLUE)

    t = 0
    color = GREEN

    -- tree
    for height = 0, MAX_HEIGHT do
        line(CENTER_WIDTH - t, height, CENTER_WIDTH + t, height, color)
        t = t + 1

        -- branch
        if height % 20 == 0 then
            t = t - (t / 3)
        end

        -- trunk
        if height > (MAX_HEIGHT / 5) * 4 then
            t = 5
            color = BROWN
        end
    end
end

function TIC() end
