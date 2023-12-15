function TIC()
 ratio = 12

 for x = 0, 240 do
  for y = 0, 136 do
   cx = x - 120
   cy = y - 68

   distance = (
    ratio * 16
    / math.sqrt(cx * cx + cy * cy)
   ) % 16
   angle = (
    0.5 * 16
    * math.atan2(cy, cx)
    / math.pi
   )
   t = time() * 0.0003
   pix(x, y, math.floor((angle + 16 * 0.25 * t) + (distance + 16 * t)))
  end
 end
end
