# Write function scramble(str1,str2) that returns true if 
# a portion of str1 characters can be rearranged to match str2, otherwise returns false.

# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.

def scramble(s1,s2)
  s2_arr = s2.chars
  s1_arr = s1.chars
  contains_letter = []
  s2_arr.each do |letter|
    contains_letter << s1_arr.include?(letter)
    s1_arr.delete_at(s1_arr.index(letter)) if s1_arr.include?(letter)
  end
  return contains_letter.all? {|bool| bool == true}
end

p scramble('cedewaraaossoqqyt','codewars')