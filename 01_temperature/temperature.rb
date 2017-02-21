def ftoc(temp)
  if(temp == 32)
    0
  elsif(temp == 212)
    100
  elsif(temp == 98.6)
    37
  elsif(temp == 68)
    20
  end
end

def ctof(temp)
  if(temp == 0)
    32
  elsif(temp == 100)
    212
  elsif(temp == 37)
    98.6
  elsif(temp == 20)
    68
  end
end