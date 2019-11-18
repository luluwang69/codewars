def number lines
arr = []
i = 1
  lines.each do |x|
   arr.<<(i.to_s.+(": ").+(x))
   i = i + 1
  end
return arr
end





p number([])
# , []
p number(["a", "b", "c"])
p number(["hello,world", "joe", "and lulu", ""])
p number(["", "", "", ""])
# , ["1: a", "2: b", "3: c"]
