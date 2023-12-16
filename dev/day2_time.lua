-- screen constants
MAX_WIDTH = 240
MAX_HEIGHT = 136
CENTER_WIDTH = MAX_WIDTH / 2
CENTER_HEIGHT = MAX_HEIGHT / 2

-- color constants
BLUE = 9
GREEN = 6
BROWN = 3
WHITE = 12


function TIC()
   cls(BLUE)

    -- tree
    for i = 0, 5 do
        j = i + 1
        tri(CENTER_WIDTH, i * 15,
            CENTER_WIDTH - j * 9, j * 18,
            CENTER_WIDTH + j * 9, j * 18,
            GREEN)
    end

    -- trunk
    rect(CENTER_WIDTH - 5, 6 * 18, 10, 50, BROWN)

   for i = 0, MAX_WIDTH / 15 do
        -- animated snow
        x = 2 + i * 15
        y = i * 30
        d = time() / 20
        rect(x, (x + y + d) % MAX_HEIGHT, 2, 2, WHITE)

        -- snow accumulatation
        d = time() / 2000
        tri(x, (MAX_HEIGHT - d), x - 8 - d, MAX_HEIGHT, x + 9 + d, MAX_HEIGHT, WHITE)
    end
end
