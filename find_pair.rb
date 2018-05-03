def find_pair(word_arr, string)
  word_arr.each_with_index do |word, first_word_index|
    compared_word_index = 0

    loop do
      if (word + word_arr[compared_word_index] == string)
        return [word, word_arr[compared_word_index], [first_word_index, compared_word_index]] 
      end
      
      break if compared_word_index >= word_arr.size - 1
      compared_word_index += 1
    end
  end
end

find_pair( ['super','bow','bowl','tar','get','book','let'], "superbowl") #      ['super','bowl',   [0,2]]
find_pair( ['bow','crystal','organic','ally','rain','line'], "crystalline") #   ['crystal','line', [1,5]]
find_pair( ['bow','crystal','organic','ally','rain','line'], "rainbow") #       ['bow','rain',     [4,0]]
find_pair( ['bow','crystal','organic','ally','rain','line'], "organically") #   ['organic','ally', [2,3]]
find_pair( ['top','main','tree','ally','fin','line'], "mainline") #             ['main','line',    [1,5]]
find_pair( ['top','main','tree','ally','fin','line'], "treetop") #              ['top','tree',     [2,0]]

