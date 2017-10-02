#  The examples below show you how to write function accum:

# Examples:

# accum("abcd")    # "A-Bb-Ccc-Dddd"
# accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt")    # "C-Ww-Aaa-Tttt"

def accum(str)
  result = []
  count = 1
  str.chars.each do |letter| 
    result << letter * count 
    count += 1
  end
  result = result.map{|obj| obj.capitalize}.join"-"
end

accum("abcd") # => "A-Bb-Ccc-Dddd"