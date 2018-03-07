def case_sort(arr)
  sorted = []
  arr_clone = arr.clone
  sorted << arr_clone.pop
  loop do
    current_word = arr_clone.pop
    arr_clone.size

    insert_word(sorted, current_word) 

    break if arr_clone.size == 0
  end
  sorted
end

def insert_word(sorted, current_word)
  sorted.each_with_index do |sorted_word, index|
    if current_word < sorted_word
      sorted.insert(index, current_word)
      break
    end
  end
  
  sorted << current_word unless sorted.include? current_word
end

arr = %w(hello world Zerbras space and ZZZ Dogs are cool Xylophone AAA ship aaa yall arabian nights)

p case_sort arr
