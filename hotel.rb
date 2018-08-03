module HouseKeeping
  def clean_room(room_num)
    puts "Cleaning room #{room_num}"
  end
end

module Valet
  def park_car(year, model)
    puts "Parking your #{year} #{model}"
  end
end

module FrontDesk
  def give_room_key
    puts "Here is your room key, room #{(1..@num_rooms).to_a.sample}. Have a nice stay!"
  end
end

class Building
  def initialize(est, floors)
    @est = est
    @floors = floors
  end
end

class Hotel < Building
  include HouseKeeping, Valet, FrontDesk

  def initialize(est, name, num_rooms, floors)
    super(est, floors)
    @name = name
    @num_rooms = num_rooms
  end
end

hotel = Hotel.new(2018, "Holiday Inn Express", 125, 4)