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
    for i = 0, 5 do
        j = i + 1
        tri(CENTER_WIDTH, i * 15,
            CENTER_WIDTH - j * 9, j * 18,
            CENTER_WIDTH + j * 9, j * 18,
            color)
    end

    rect(CENTER_WIDTH - 5, 6 * 18, 10, 50, BROWN)
end

function TIC() end
