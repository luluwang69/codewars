def find_short(s)
arr = []
  s.split.each do |x|
    arr << x.length.to_i
  end
  l = arr.sort
  return l[0]
end



p find_short("bitcoin take over the world maybe who knows perhaps")
# , 3
#   find_short("turns out random test cases are easier than writing out basic ones"), 3
#   find_short("lets talk about javascript the best language"), 3
#   find_short("i want to travel the world writing code one day"), 1
#   find_short("Lets all go on holiday somewhere very cold"), 2
