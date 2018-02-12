def map_contamination(matrix)
  zombie_num = matrix[0][0]
  zombie_map = matrix.map do |row|
                 row.map do |elem|
                   0
                 end
               end

  set_zombie(matrix, zombie_map, 0, 0)
end

def set_zombie(world, zombie_map, row, col)
  zombie = world[0][0]

  if row >= world.size || row < 0
    return
  elsif col >= world.size || col < 0
    return
  elsif zombie_map[row][col] == 1
    return
  elsif world[row][col] == zombie
    zombie_map[row][col] = 1 
    
    set_zombie(world, zombie_map,row - 1, col)
    set_zombie(world, zombie_map,row, col + 1) 
    set_zombie(world, zombie_map,row + 1, col) 
    set_zombie(world, zombie_map,row, col - 1)
  end
  zombie_map
end

map_contamination [[1, 2, 3],[1, 1, 7],[6, 9, 1]]