def monkey_count(n)
# if i == n
#   return [i]
# else
#   return [i, n+1]
#   end
# end



  i = 1
  while i <= n do
    return "#{i}"
    i += 1
  end
end



p monkey_count(5)
 # [1, 2, 3, 4, 5])
# assert_equals(monkey_count(3), [1, 2, 3])
# assert_equals(monkey_count(9), [1, 2, 3, 4, 5, 6, 7, 8, 9])
# assert_equals(monkey_count(10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
# assert_equals(monkey_count(20), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
