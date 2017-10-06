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
