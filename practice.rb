#caesar cipher

def cipher(str,switch)
  alpha = ("a".."z").to_a
  new_str = []
  i = 0
  while i < str.length
    letter = str[i]
    letter_idx = alpha.index(letter)
    new_letter = alpha[(letter_idx + 3) % alpha.length]
    new_str << new_letter
    i += 1
  end
  new_str.join("")
end

puts cipher("hello",3)
puts cipher("zoo", 4)

#digital_root

def digital_root(num)
  until num < 10
    num = num/10 + num%10
  end
  num
end

puts digital_root(25032)

#sum_Recursive

def sum_recurve(nums)
  return 0 if nums.empty?
  nums[-1] + sum_recurve(nums[0..-2])
end

puts sum_recurve([1,2,3,4])

#fibinocci

def fibs(num)
  return [] if num == 0
  return [0] if num == 1
  return [0,1] if num == 2

  prev = fibs(num-1)
  prev << prev[-1] + prev[-2]
  prev 
end
