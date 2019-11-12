def smallest_int(objects)
  arr = []
    objects.each do |x|
      if x.is_a?(Integer)
      arr << x
      end
    end
  return arr.min
end

p smallest_int([2,"Hello","No",3,1]) # => 1
p smallest_int([2,true,[],"3",1]) # => 1
p smallest_int(["world",true,[],"3","Hello"]) # => nil
