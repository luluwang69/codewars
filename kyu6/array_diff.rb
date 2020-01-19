def array_diff(a, b)
  b.each do |x|
    a << x
    a.delete_if{|i| i == x}
  end
  return a
end







print array_diff([1,2], [1])
# , [2], "a was [1,2], b was [1], expected [2]")
print array_diff([1,2,2], [1])
# , [2,2], "a was [1,2,2], b was [1], expected [2,2]")
print array_diff([1,2,2], [2])
# , [1], "a was [1,2,2], b was [2], expected [1]")
print array_diff([1,2,2], [])
# , [1,2,2], "a was [1,2,2], b was [], expected [1,2,2]")
print array_diff([], [1,2])
# , [], "a was [], b was [1,2], expected []")
