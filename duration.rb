def format_duration(seconds)
  return 'now' if seconds.zero?
  years, days, hours, minutes, seconds = get_time_breakdown(seconds)
  joinor(time_in_words(years, days, hours, minutes, seconds))
end

def get_time_breakdown(seconds)
  years = seconds / 60 / 60 / 24 / 365
  days = seconds / 60 / 60 / 24 % 365
  hours = seconds / 60 / 60 % 24
  minutes = seconds / 60 % 60
  seconds = seconds % 60
  [years, days, hours, minutes, seconds]
end

def time_in_words(years, days, hours, minutes, seconds)
  time_data_hash = Hash[%w(years days hours minutes seconds)
                   .zip([years, days, hours, minutes, seconds])]

  time_data_hash.reject { |_, val| val.zero? }
                .each.with_object([]) do |(unit, value), result|
                  result << if value == 1
                              "#{value} #{unit[0...-1]}"
                            else
                              "#{value} #{unit}"
                            end
                end
end

def joinor(arr, symbol = ',', conjunction = 'and')
  return arr[0] if arr.size == 1

  arr.each_with_index.with_object('') do |(time_measurement, index), result|
    result << if index < arr.size - 2
                "#{time_measurement}#{symbol} "
              elsif index < arr.size - 1
                "#{time_measurement} "
              else
                "#{conjunction} #{time_measurement}"
              end
  end
end
