# loop through its characters;
# when you see a {[(, put it into a stack (Ruby array can work as a stack);
# when you see a }]), take a look at the last character in the array and see whether it is a match 
#(for example, the last element in the array is [, and you have a ], that's a match). 
#If it is a match, pop the last element in the array; 
#any time you see one mismatch, the string is bad, and you can stop the loop.

BRACES = {'(' => ")", '{' => "}", '[' => "]"}

def valid_braces(str)
  el = []
  str.chars.each do |char|
    char == BRACES[el[-1]] ? el.pop : el.push(char)
  end
  (el.empty? ? true : false)
end

p valid_braces("()") == true
p valid_braces("({[]})") == true
p valid_braces("({[]})(){}") == true
p valid_braces("[]{}[]()") == true
p valid_braces("()") == true
p valid_braces(")") == false
p valid_braces("(") == false
p valid_braces(")(") == false