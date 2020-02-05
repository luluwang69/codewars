def simple(x,y)
  x = 0 if x == nil
  y = 0 if y == nil

  a =[]
  if x >= 0 and y >= 0
    x.times{a << 1}
    y.times{a << 1}
    return a.length
  elsif x < 0 and y < 0
    x.abs.times{a << 1}
    y.abs.times{a << 1}
    return a.length * (x**2 / x / x.abs)
  else
    x, y = y, x if x.abs < y.abs
    x.abs.times{a << 1}
    y.abs.times{a.delete_at(0)}
    return a.length * (x**2 / x / x.abs)
  end
end


def convert_to_positives(digits)
  for i in 0 ... digits.length
    if digits[i] < 0
      digits[simple(i, 1)] = simple(digits[simple(i, 1)], "#{digits[i].to_s[0]}1".to_i)
      digits[i] = simple(digits[i], 10)
    end
  end
  return digits
end

def convert_to_negatives(digits)
  for i in 0 ... digits.length
    if digits[i] > 0
      digits[i] = simple(digits[i], "#{digits.last.to_s[0]}10".to_i)
      digits[simple(i, 1)] = simple(digits[simple(i, 1)], 1)
    end
  end
  return digits
end

def convert_to_num(digits)
   digits.pop until digits.last != 0
  if  digits.last > 0
    return digits.reverse.join.to_i
  elsif digits.last < 0
    return "#{digits.last.to_s[0]}1".to_i * digits.map{|e|e.abs}.reverse.join.to_i
  elsif digits.empty?
    return 0
  end
end


def add(x, y)
  x, y = y, x if x.abs < y.abs

  x_digits = x.to_s.reverse.split("").map do |a|
    if x < 0
      a.to_i * "#{x.to_s[0]}1".to_i
    else
      a.to_i
    end
  end
   x_digits.pop if x < 0
    # p x_digits

  y_digits = y.to_s.reverse.split("").map do |a|
    if y < 0
      a.to_i * "#{y.to_s[0]}1".to_i
    else
      a.to_i
    end
  end
  y_digits.pop if y < 0
    # p y_digits
  result = []
  carry_over = 0

  for i in 0...x_digits.length
    curr_x_digit = x_digits[i]
    curr_y_digit = y_digits[i]
    curr_res = simple(simple(curr_x_digit,curr_y_digit), carry_over).to_s
    if curr_res.to_i >= 10
      result << curr_res[1].to_i
      carry_over = curr_res[0].to_i
    elsif curr_res.to_i < 0 && curr_res.to_i <= "#{curr_res[0]}10".to_i
      result << "#{curr_res[0]}#{curr_res[2]}".to_i
      carry_over = "#{curr_res[0]}#{curr_res[1]}".to_i
    else
      result << curr_res.to_i
      carry_over = 0
    end
  end
  result << carry_over if carry_over != 0

  result.pop until result.last != 0

  if result.empty?
    return 0
    elsif result.last > 0
    result = convert_to_positives(result)
   elsif result.last < 0
    result = convert_to_negatives(result)
  end

  return convert_to_num(result)
end

 # p add(-123,-999) == -123 + -999

 # p add(123,999) == 123 + 999
 # p add(98,-123) == 98 + -123
 # p add(-90,30)
 # p (-90 + 30)

#
1000.times do
  a = ((rand()+0.5)*1000000).round * [1,-1].sample
  b = ((rand()+0.5)*1000000).round * [1,-1].sample
  if add(a,b) != (a + b)
    puts "NOT WORKING FOR #{a} and #{b}"
  end
end

# 10.times do
#   a = ((rand()+0.5)*1000000).round * [1,-1].sample
#   b = ((rand()+0.5)*1000000).round * [1,-1].sample
#   if simple(a,b) != (a + b)
#     puts "NOT WORKING FOR #{a} and #{b}"
#   end
# end



# def convert_to_positives(digits)
#   positives = []
# for i in 0 ... digits.length
#     if digits[i] < 0
#       positives << simple(digits[i], 10)
#       digits[simple(i, 1)] == simple(digits[simple(i, 1)], "#{digits[i].to_s[0]}1".to_i)
#     else
#       positives << digits[i]
#     end
#   end
#   return positives
# end






# def add(x,y)
#   a = [1]*x.abs
#   b = [1]*y.abs
#   c = []
#   if x >= 0 and y >= 0
#       if x > y
#         c = a.zip(b).flatten
#       else
#         c = b.zip(a).flatten
#       end
#         c.delete(nil)
#       return c.length
#   elsif x <= 0 and y <= 0
#       if x < y
#         c = a.zip(b).flatten
#       else
#         c = b.zip(a).flatten
#       end
#         c.delete(nil)
#     return c.length * (x**2 / x / x.abs)
#    else
#     if x.abs >= y.abs
#       a.slice!(0...y)
#       return a.length * (x**2 / x / x.abs)
#     else
#       b.slice!(0...x)
#       return b.length * (y**2 / y / y.abs)
#     end
#   end
# end



# # def add(x, y)
# #   x, y = y, x if x < y
# #
# #   x_digits = x.to_s.reverse.split("").map(&:to_i)
# #   y_digits = y.to_s.reverse.split("").map{|a| a.to_i}
# #
# #   result = []
# #   carry_over = 0
# #
# #   for i in 0...x_digits.length
# #     curr_x_digit = x_digits[i]
# #     curr_y_digit = y_digits[i]
# #     curr_res = simple(simple(curr_x_digit,curr_y_digit), carry_over).to_s
# #     curr_res = "0#{curr_res}" if curr_res.length == 1
# #     result << curr_res[1].to_i
# #     carry_over = curr_res[0].to_i
# #   end
# #
# #   result << carry_over if carry_over > 0
# #
# #   return result
# #
# #   # return result.reverse.map(&:to_s).join().to_i
# # end
#






# def add(x,y)
#   a =[]
#   if x >= 0 and y >= 0
#     x.times{a << 1}
#     y.times{a << 1}
#     return a.length
#   elsif x < 0 and y < 0
#     x.abs.times{a << 1}
#     y.abs.times{a << 1}
#     return a.length * (x**2 / x / x.abs)
#   else
#     x, y = y, x if x.abs < y.abs
#     x.abs.times{a << 1}
#     y.abs.times{a.delete_at(0)}
#     return a.length * (x**2 / x / x.abs)
#   end
# end






    # p add(3, -5)
    # , 3)
    # p add(5,19)
  # #   # , 24)
  #    p add(23,17)
  #   # , 40)
  #   #
  # p add(-13,13)
    # , 0);
    # add(-27,18)
    # , -9);
  # add(-90,30)
    # , -60);
    # p add(-14,-16)
    # # , -30);
    # p  add(-50,-176)
    # # , -226);
    # p add(-10,-29)
    # # , -39);


    #
    # def add(x, y)
    #   x, y = y, x if x < y
    #
    #   x_digits = x.to_s.reverse.split("").map(&:to_i)
    #   y_digits = y.to_s.reverse.split("").map{|a| a.to_i}
    #
    #   digits = x_digits.zip(y_digits)
    #
    #   result = digits.map do |a|
    #     simple(a[0],a[1])
    #   end
    #
    #   return result.reverse.map(&:to_s).join
    # end
