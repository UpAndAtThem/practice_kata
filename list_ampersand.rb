def list_ampersand names
  names.map { |hash| hash[:name]}.join(", ").reverse.sub("," , "& ").reverse
end

list_ampersand([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])