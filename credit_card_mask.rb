# Usually when you buy something, you're asked whether your credit card number, 
# phone number or answer to your most secret question is still correct. However, 
# since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

def maskify(str)
   info_obscured = str[0, str.length - 4]
   str = str.gsub(info_obscured, "#" * info_obscured.length)
   str
end

def maskify!(str)
   info_obscured = str[0, str.length - 4]
   str = str.gsub!(info_obscured, "#" * info_obscured.length)
   str
end



cc = '697848576834'
p maskify cc
p cc

p maskify! cc
p cc