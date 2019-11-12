def my_reverse(string)
s = ""
  for i in 0..string.length-1
  s = string[i] + s
  end
return s
end


p my_reverse("hello")
