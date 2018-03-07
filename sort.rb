def case_sort(arr)
  sorted = []
  arr_clone = arr.clone
  sorted << arr_clone.pop
  loop do
    current_word = arr_clone.pop
    arr_clone.size

    sorted.each_with_index do |sorted_word, index|
      if current_word < sorted_word
        sorted.insert(index, current_word)
        break
      end
    end

    sorted << current_word unless sorted.include? current_word

    break if arr_clone.size == 0
  end
  sorted
end

arr = %w(hello world Zerbras and Dogs are cool Xylophone yall arabian nights)
p case_sort arr
p arr