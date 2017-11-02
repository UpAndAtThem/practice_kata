# one every 3 is eliminated until one remains
# [1,2,3,4,5,6,7] - initial sequence
# [1,2,4,5,6,7] => 3 is counted out
# [1,2,4,5,7] => 6 is counted out
# [1,4,5,7] => 2 is counted out
# [1,4,5] => 7 is counted out
# [1,4] => 5 is counted out
# [4] => 1 counted out, 4 is the last element - the survivor!

def josephus_survivor(n, k)
  survivors = (1..n).to_a
  loop do
    survivors.rotate!(k -1).shift
    return survivors[0] if survivors.length == 1
  end
end

p josephus_survivor(7,3) #=> means 7 people in a circle;

