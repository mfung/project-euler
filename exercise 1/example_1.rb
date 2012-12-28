# sum of multiples of 3 and 5 to n

def sum_multiples_of_3_or_5(target = 0)
  sum = 0
  (0...target).each do |number|
    if multiple_of_3?(number) || multiple_of_5?(number) 
      sum += number
    end
  end
  sum
end

def multiple_of_3?(number)
  number%3 == 0
end

def multiple_of_5?(number)
  number%5 == 0
end