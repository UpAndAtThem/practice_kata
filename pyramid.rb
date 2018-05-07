def pyramid(height)
  width = 1
  while width <= height * 2
    puts "#{"*" * width}".center(height * 2 - 1)
    width += 2
  end
end

pyramid(10)