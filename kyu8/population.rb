# def nb_year(p0, percent, aug, p)
#   n = 1
#
#   # p1 = p0 * (1 + percent*0.01)**n + aug
#   # p2 = p1 * (1 + percent*0.01)**2 + aug
#   # p3 = p2 * (1 + percent*0.01)**3 + aug
#
#
# a = Array.new(n) {|p0| p0 * (1 + percent*0.01) + aug}
#
#  while a[-1] < p do
#    n = n + 1
#   end
# return n
# end

def nb_year(p0, percent, aug, p)
  curr_pop = p0
  n = 0
  while curr_pop < p
    curr_pop = (curr_pop*(1+percent*0.01)).to_i + aug
    n = n + 1
    puts "Current population is #{curr_pop}"
    puts "Current value of n is #{n}"
    puts ""
  end
  return n
end



p nb_year(1000, 2, 50, 1214)
