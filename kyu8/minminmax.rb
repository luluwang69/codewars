def min_min_max(array)
a = []
b = array.sort
c = (b[0]..b[-1]).to_a
i = 1
  a << b[0]
   if b.include?(c[i])
      until b.include?(c[i])==false do
        i = i + 1
      end
      a << c[i]
   else
      a << c[i]
   end
   a << b[-1]
 return a
end




# def min_min_max(array)
#   min, max = array.minmax
#   [min, ((min..max).to_a - array).min, max]
# end

# p min_min_max([-1, 4, 5, -23, 24])
p min_min_max([1, 3, -3, -2, 8, -1])
