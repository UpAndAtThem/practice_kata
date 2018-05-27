def array_diff(list, to_remove)
  list = list.clone

  to_remove.each { |elem| list.delete elem }
  list
end
