def digitize(n)
n.to_s.split("").reverse.map{|x| x.to_i}
end
