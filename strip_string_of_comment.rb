def strip_comments(input, markers)
  input = input.split("\n")
  result = []
  input.each do |sentence|
    line = ""
    0.upto(sentence.length-1) do |index|
      if markers.include? sentence[index]
        break
      else
        line += sentence[index]
      end
    end
    result << line.strip
  end
  result.join("\n")
end

p strip_comments "Hello world # !Fuck this" , ['!']