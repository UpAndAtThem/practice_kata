# initialize_clock
# analyze the clock hour and minute input.
# analyze minutes: find the number of hours by doing integer division on it.  find the remainder of minutes and set that to minutes.
# subtract or add extra hours from the minutes input.
# analyze hours: find the remainder of hours and set that to minutes.


require 'pry'

class Clock
  def initialize(hour: (hour = 0), minute: (minute = 0))
    @hour = hour_adjusted(hour, minute)
    @minute = minute % MINUTES_IN_HOUR

    @hour_str = "0" + @hour.to_s
    @minute_str = "0" + @minute.to_s
  end

  def num_hours(minutes)
    minutes / MINUTES_IN_HOUR
  end

  def to_s
    "#{@hour_str[-2,2]}:#{@minute_str[-2,2]}"
  end

  def -(other)

  end

  def +(other)

  end

  def ==(other)
    self.to_s == other.to_s
  end

  private

  MINUTES_IN_HOUR = 60
  HOURS_IN_DAY = 24

  attr_reader :hour, :minute, :hour_str, :minute_str

  def hour_adjusted(hour, minute)
    (num_hours(minute) + (hour % HOURS_IN_DAY)) % 24
  end
end

