def is_valid_walk(walk)
a = []
hash = {"n" => 1, "s" => -1, "w" => 2, "e" => -2}
walk.each{|x| a << hash[x]}
  if a.length == 10 && a.inject(0){|sum, i| sum + i} == 0
    return true
  else
    return false
  end
end


puts is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
 # 'should return true'

puts is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])
# , 'should return false'
#
puts is_valid_walk(['w'])
# , 'should return false'
puts is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])
 # 'should return false'
