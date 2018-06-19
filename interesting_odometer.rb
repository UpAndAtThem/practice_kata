DECREMENTING = "9876543210"
INCREMENTING = "1234567890"

def is_interesting(number, awesome_phrases)  
  interesting = false
  almost_interesting = false

  if all_trailing_zeros?(number)
    interesting = true
  elsif all_same_digits?(number)
    interesting = true
  elsif incrementing? number
    interesting = true
  elsif decrementing? number
    interesting = true
  elsif palindrome(number)
    interesting = true
  elsif awesome_phrases?(number, awesome_phrases)
    interesting = true
  elsif almost_interesting_check(number + 1, awesome_phrases) || almost_interesting_check(number + 2, awesome_phrases)
    almost_interesting = true
  end
  
  
  return 2 if interesting
  return 1 if almost_interesting
  0
end

def almost_interesting_check(number, awesome_phrases)  
  interesting = false
  almost_interesting = false

  if all_trailing_zeros?(number)
    interesting = true
  elsif all_same_digits?(number)
    interesting = true
  elsif incrementing? number
    interesting = true
  elsif decrementing? number
    interesting = true
  elsif palindrome(number)
    interesting = true
  elsif awesome_phrases?(number, awesome_phrases)
    interesting = true
  end
  
  
  return true if interesting
  return false if almost_interesting
  false
end

def awesome_phrases?(num, awesome_phrases)
  awesome_phrases.include? num
end

def incrementing?(number)
  INCREMENTING.match(number.to_s) && number.to_s.length > 2
end

def decrementing?(number)
  DECREMENTING.match(number.to_s) && number.to_s.length > 2
end

def palindrome(num)
  num.to_s == num.to_s.reverse && num.to_s.length > 2
end

def all_trailing_zeros?(num)
  num.to_s.split("")[1..-1].all? {|digit| digit.to_i.zero?} &&
  !num.to_s.split("")[1..-1].empty?
end

def all_same_digits?(num)
  letter = num.to_s[0]
  num.to_s.chars.all? { |char| char == letter} &&
  num.to_s.length > 2
end