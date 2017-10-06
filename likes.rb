def likes(name_arr)
  num_likes = name_arr.size
  if num_likes == 0
    "no one likes this"
  elsif num_likes == 1
    "#{name_arr[0]} likes this"
  elsif num_likes == 2
    "#{name_arr[0]} and #{name_arr[1]} like this"
  elsif num_likes == 3
    "#{name_arr[0]}, #{name_arr[1]} and #{name_arr[2]} like this"
  else num_likes > 3
    "#{name_arr[0]}, #{name_arr[1]} and #{num_likes - 2} others like this"
  end
end

p likes ["Peter"] #// must be "Peter likes this"
p likes ["Jacob", "Alex"] #// must be "Jacob and Alex like this"
p likes ["Max", "John", "Mark"] #// must be "Max, John and Mark like this"
p likes ["Alex", "Jacob", "Mark", "Max", "Jill", "Cindy", "Charles"] #must be "Alex, Jacob and 2 others like this"