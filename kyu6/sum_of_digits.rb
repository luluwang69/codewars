def digital_root(n)
  while n >= 10 do
    a = []
    n.to_s.split('').each {|x| a << x.to_i}
    n = a.inject(0){|sum, i| sum + i}
    # return n if n < 10
  end
  return n
end

puts digital_root(418)
