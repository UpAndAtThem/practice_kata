def bang(int)
  return 3 if int == 2

  multiple = bang(int - 1)
  multiple + int
end

p bang 10
