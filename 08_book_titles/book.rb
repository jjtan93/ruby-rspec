class Book
  
  attr_accessor :title
  
  def title=(titleArg)
    strArray = titleArg.split
    
    # Always capitalize first word
    strArray[0].capitalize!
    
    for i in 0..(strArray.length - 1)
      if(strArray[i] != "the" and strArray[i] != "a" and strArray[i] != "and" and strArray[i] != "an" and strArray[i] != "in" and strArray[i] != "of")
        strArray[i].capitalize!
      end
      
    end
    
    @title = strArray.join(' ')
    @title
  end
  
end