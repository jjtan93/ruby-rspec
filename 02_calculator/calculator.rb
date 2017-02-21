def add(int1, int2)
  int1.to_i + int2.to_i
end

def subtract(int1, int2)
  int1.to_i - int2.to_i
end

def sum(array)
  total = 0
  array.each do |element|
    total += element
  end
  total
end

def multiply(*args)
  total = 1
  
  args.each do |element|
    total *= element
  end
  
  total
end

def power(base, power)
  result = 1
  
  power.times do
    result *= base
  end
  
  result
end

def factorial(num)
  result = 1;
  
  if(num == 0)
    result
  else
    for i in 2..num
      result *= i
    end
  end
  
  result
end