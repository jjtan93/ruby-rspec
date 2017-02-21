def echo(arg)
  arg.to_s
end

def shout(arg)
  arg.upcase
end

def repeat(arg, numTimes = 0)
  result = ""
  
  if(numTimes == 0)
    result = arg + " " +arg
  else
    for i in 0..(numTimes -1)
      result = result + arg.to_s

      if(i != numTimes - 1)
        result = result + " "
      end
    end
  end
  
  result
end

def start_of_word(arg, position)
  arg.to_s[0..(position - 1)]
end

def first_word(arg)
  strArray = arg.split(" ")
  strArray[0]
end

def titleize(arg)
  #strArray = arg.to_s.split.each{|element| element.capitalize!}.join(' ')
  strArray = arg.to_s.split
  
  # Always capitalize the 1st word
  strArray[0].capitalize!
  
  for i in 0..(strArray.length - 1)
    if(strArray[i] != "and" and strArray[i] != "the" and strArray[i] != "over")
      strArray[i].capitalize!
    end
  end
  
  strArray.join(' ')
end