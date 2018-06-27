def middle(str)
  middle = str.length / 2
  length = str.length

  length.odd? ? str[middle] : str[middle - 1, 2]
end
