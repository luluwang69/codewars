def nb_dig(n, d)
  (0..n).to_a.map{|x| (x**2).to_s}.join.split("").select{|y| y.include?(d.to_s)}.length
end



p nb_dig(11011, 2)
# , 9481
# nb_dig(12224, 8), 7733
# nb_dig(11549, 1), 11905
