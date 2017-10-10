# Create a UUID a string that has 5 sections seperated by dashes.  
# 8-4-4-4-12 (structure where each number represents a random hexadecimal char)

HEXADECIMAL = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']

UUID_section_length = [8, 4, 4, 4, 12]

def generate_uuid
  uuid = []
  UUID_section_length.each {|length| uuid << HEXADECIMAL.sample(length).join}
  uuid.join("-")
end
