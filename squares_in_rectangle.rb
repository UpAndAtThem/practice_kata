def sqares_in_rectangle(length, width)
  return nil if length == width

  arr = []
  loop do
    if length < width
      arr << length
      width -= length
    else
      arr << width
      length -= width
    end

    break if length.zero?
  end

  arr
end