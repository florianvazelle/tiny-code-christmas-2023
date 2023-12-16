function TIC()
 for x = 0, 240 do
  for y = 0, 136 do
   hue = math.sin(x / 16)
    + math.sin(y / 8)
    + math.sin((x + y + time() * 0.1) / 16)
    + math.sin(math.sqrt((x * x + y * y)) / 8)
   pix(x, y, (hue + 4) / 8 * 15)
  end
 end
end
