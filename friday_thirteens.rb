require 'date'

def num_friday_thirteens(year)
  calendar = Date.new(year, 01, 13)
  friday_thirteen_count = 0

  12.times do |month|
    friday_thirteen_count += 1 if calendar.next_month(month).friday?
  end

  friday_thirteen_count
end
