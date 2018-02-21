# Alyssa was asked to write an implementation of a rolling buffer.
# Elements are added to the rolling buffer and if the buffer becomes full,
# then new elements that are added will displace the oldest elements in the buffer.

MAX = 5

def rolling_buffer(buffer, max, new_element)
  new_element.each do |item|
    buffer << item
    buffer.shift if buffer.length > MAX
  end
  buffer
end

buffer = %w(tree flower bush fence sidewalk)
new_items = %w(weed dandilion rose)

rolling_buffer(buffer, MAX, new_items)