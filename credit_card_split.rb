# It is a simple, real world task. You will receive a single string as input.
# It will have the month (2 digits) and year(2 or 4 digits).
# These are separated by one character ("-" or "/", maybe some spaces too).
# For example:

# 02/21
# 02 / 21
# 02 / 2021
# 02-2021
# Assume that all dates are in the XXI century.

# Your task is to write a function that returns true or false if the expiry date is not in the past.
# Note, current month should still return true.

require 'date'

def standardize_date(date)
  date_arr = date.split(/[-\/]/)
  date_arr[1].length == 2 ? [date_arr[0], "20" + date_arr[1]] : date_arr
end

def expired?(card_expiration)
  current_date = DateTime.now
  current_date = current_date.strftime("%m/%Y").split("/")

  card_expiration = standardize_date(card_expiration)

  earlier_month = card_expiration[0] < current_date[0]
  earlier_year = card_expiration[1] < current_date[1]
  same_year = card_expiration[1] == card_expiration[1]

  if earlier_year
    true
  elsif earlier_month && same_year
    true
  else
    false
  end
end

p expired? "02-18"