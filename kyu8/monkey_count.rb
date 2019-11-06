def monkey_count(n)
  i = 1
  array = []
  while i <= n do
    array << i
    i += 1
  end
  return array
end

def monkey_count(number)
  (1..number).to_a
end

p monkey_count(5)
 # [1, 2, 3, 4, 5])
# assert_equals(monkey_count(3), [1, 2, 3])
# assert_equals(monkey_count(9), [1, 2, 3, 4, 5, 6, 7, 8, 9])
# assert_equals(monkey_count(10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
# assert_equals(monkey_count(20), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
