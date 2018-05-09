def trim_directions(directions)
  result_arr = []
  directions_hsh = create_direction_hash(directions)

  directions_hsh.each do |direction, num_occurance|
    if num_occurance > directions_hsh[opposite(direction)]
      (num_occurance - directions_hsh[opposite(direction)])
        .times { |_| result_arr << direction }
    end
  end

  result_arr
end

def create_direction_hash(directions)
  directions_hsh = {}

  %w(north south east west).each do |direction|
    directions_hsh[direction] = directions.count direction
  end

  directions_hsh
end

def opposite(direction)
  case direction
  when 'north' then 'south'
  when 'east'  then 'west'
  when 'south' then 'north'
  when 'west'  then 'east'
  end
end

directions = %w(north south east west north south west west north east)

p trim_directions directions
