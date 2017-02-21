=begin
def translate(arg)
  vowels = ['a', 'e', 'i', 'o', 'u']
  strArray = arg.to_s.split
  result = arg.to_s
  
  if(vowels.include? result[0])
    result = result + "ay"
  else
    while( !(vowels.include? result[0]) )
      result = result[1..-1] +result[0]
    end
    result += "ay"
  end
  
  result
end
=end

def translate(arg)
  vowels = ['a', 'e', 'i', 'o', 'u']
  strArray = arg.to_s.split
  result = arg.to_s
  
  # Alter each word in the string, and rejoin them when all alterations are done
  for i in 0..(strArray.length - 1)
    if(vowels.include? strArray[i][0])
      strArray[i] = strArray[i] + "ay"
    else
      while( !(vowels.include? strArray[i][0]) )
        strArray[i] = strArray[i][1..-1] +strArray[i][0]
        
        # Check for any occurence of 'qu'
        if(strArray[i][-1] == "q" and strArray[i][0] == "u")
          strArray[i] = strArray[i][1..-1] +strArray[i][0]
        end
      end
      
      strArray[i] += "ay"
    end
  end
  
  result = strArray.join(' ')
end