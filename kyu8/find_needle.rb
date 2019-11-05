def find_needle(haystack)
  i = 0
  haystack.each do |x|
    if x == "needle"
      return "found the needle at posion #{i}"
    end
    i += 1
  end
end











# pfind_needle(["3", "123124234", nil, "needle", "world", "hay", 2, "3", true, false])
p find_needle(["283497238987234", "a dog", "a cat", "some random junk", "a piece of hay", "needle", "something somebody lost a while ago"])
# find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,"needle",1,2,3,4,5,5,6,5,4,32,3,45,54]), "found the needle at position 30")
# find_needle(["needle",1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54]), "found the needle at position 0")
# find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54,"needle"]), "found the needle at position 43")
