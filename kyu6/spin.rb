def spinWords(string)
string.split(" ").each {|x| x.reverse! if x.length > 4}.join(" ")
end


p spinWords("Hey fellow warriors")
# , "Hey wollef sroirraw"
