class ETL
  def self.transform(old_data)
    old_data.each_with_object({}) do |(score, letters), result_hsh|  
      letters.each { |letter| result_hsh[letter.downcase] = score }
    end
  end
end