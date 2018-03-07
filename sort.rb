def sort(arr)
  sorted = []
  arr_clone = arr.clone
  sorted << arr_clone.pop

  loop do
    current_word = arr_clone.pop
    insert_word(sorted, current_word) 
    break if arr_clone.size == 0
  end

  sorted
end

def insert_word(sorted, current_word)
  sorted.each_with_index do |sorted_word, index|
    if current_word.downcase < sorted_word.downcase
      sorted.insert(index, current_word)
      break
    end
  end
  
  sorted << current_word unless sorted.include? current_word
end

arr = %w(hello world Zerbras space and ZZZ Dogs are cool Xylophone AAA ship aaa yall arabian nights)

p sort arr
