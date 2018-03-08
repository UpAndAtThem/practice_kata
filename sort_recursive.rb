def sort(arr)
  arr = arr.clone
  sorted_list = []
  recursive_sort(sorted_list, arr)
  sorted_list
end

def recursive_sort(sorted_list, unsorted_list)
  sorted_list << unsorted_list.pop if sorted_list.empty?
  current_word = unsorted_list.pop

  insert_word(sorted_list, current_word)
  
  recursive_sort(sorted_list, unsorted_list) unless unsorted_list.empty?
  sorted_list
end

def insert_word(sorted_list, current_word)
  sorted_list.each_with_index do |word, index|
    if current_word.downcase < word.downcase
      sorted_list.insert(index, current_word)
      break
    end
  end

  sorted_list << current_word unless sorted_list.include? current_word
end
