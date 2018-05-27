def unique_in_order(object)
  (object.is_a?(String) ? object.chars : object).chunk { |x| x }.map(&:first)
end
