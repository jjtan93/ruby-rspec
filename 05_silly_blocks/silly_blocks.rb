def reverser
  str = yield
  strArray = []
  
  frontIndex = 0;
  backIndex = str.length - 1;
  
  # Reverse all letters
  while(frontIndex != backIndex and frontIndex < backIndex)
    tempChar = str[frontIndex]
    str[frontIndex] = str[backIndex]
    str[backIndex] = tempChar
    
    frontIndex += 1
    backIndex -= 1
    
  end
  
  strArray = str.split
  
  frontIndex = 0;
  backIndex = strArray.length - 1;
  
  # Reverse all words
  while(frontIndex != backIndex and frontIndex < backIndex)
    tempStr = strArray[frontIndex]
    strArray[frontIndex] = strArray[backIndex]
    strArray[backIndex] = tempStr

    frontIndex += 1
    backIndex -= 1
    
  end
  
  # Rejoin the reversed words
  strArray.join(' ')
end

def adder(arg = nil)
  val = yield.to_i
  
  if(arg == nil)
    val += 1
  else
    val += arg.to_i
  end
  
  val
end

def repeater(arg = nil)
  
  if(arg == nil)
    yield
  else
    for i in 0..(arg.to_i - 1)
      yield
    end
  end
  
end


