function TIC()
 for x = 0, 240 do
  for y = 0, 136 do
   pix(x, y, (x + y + time()) % 15)
  end
 end
end
