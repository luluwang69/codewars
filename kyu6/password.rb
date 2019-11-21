def play_pass(str, n)
  hash = {}
  arr = str.split("")
  alph = ("A".."Z").to_a
  digit = ("0".."9").to_a

    ("A".."Z").to_a.each_with_index{|x,i| hash[x] = i}

for j in 0..arr.length-1
  if alph.include?(arr[j])
    x = arr[j]
    arr[j] = hash.key((hash[x]+ n).%(26))
    arr[j] = arr[j].downcase if j.odd?
  elsif digit.include?(arr[j])
    x = arr[j]
    arr[j] = (9 - x.to_i).to_s
   end
  end

  return arr.reverse.join
end

# good answer
# def play_pass(str, n)
#   str
#     .downcase
#     .tr('a-z', ('a'..'z').to_a.rotate(n).join)
#     .tr('0-9', '9876543210')
#     .gsub(/(..|.$)/, &:capitalize)
#     .reverse
# end


# p play_pass("LOVE2015!!!", 27)

 p play_pass("I LOVE YOU!!!", 1) == "!!!vPz fWpM J"
#
p  play_pass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2) ==   "4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO"









#     for j in 0..arr.length-1
#       x = arr[j]
#       arr[j] = hash.key((hash[x]+ n).%(26))
#     end
#
#     arr
#
# end
#
#
#
# p play_pass("LOVE", 27)




# for j in 0..arr.length-1
#   x = arr[j]
#   arr[j] = (9 - x.to_i).to_s
# end
#
# arr
#
# end
#
#
#
# p play_pass("2015", 27)
