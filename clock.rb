class Clock
  def initialize(hour: (hour = 0), minute: (minute = 0))
    @hour = hour_adjusted(hour, minute)
    @minute = minute % MINUTES_IN_HOUR
  end

  def to_s
    "#{hour_str[-2,2]}:#{minute_str[-2,2]}"
  end

  def -(other)
    neg_hour = other.hour * -1
    neg_minute = other.minute * -1

    other_clock_mutation(neg_hour, neg_minute, -1)
  end

  def +(other)
    other_clock_mutation(other.hour, other.minute, 1)
  end

  def ==(other)
    self.to_s == other.to_s
  end

  private

  MINUTES_IN_HOUR = 60
  HOURS_IN_DAY = 24
  MINUTE_RANGE = (0..59)

  def hour_adjusted(hour, minute)
    (num_hours(minute) + hour) % HOURS_IN_DAY
  end

  def num_hours(minutes)
    minutes / MINUTES_IN_HOUR
  end

  def hour_str
    "0" + @hour.to_s
  end

  def minute_str
    "0" + @minute.to_s
  end

  def other_clock_mutation(other_hour, other_minute, minute_rollover)
    self.hour = self.hour + minute_rollover unless MINUTE_RANGE.cover?(self.minute + other_minute)

    self.hour = (hour + other_hour) % 24
    self.minute = (minute + other_minute) % 60

    self
  end

  protected

  attr_accessor :hour, :minute
end
