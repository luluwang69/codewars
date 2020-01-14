def duplicate_count(text)
a = text.downcase.split('')
return a.select{|x| a.count(x)>1}.uniq.length
end

# duplicate_count("")
# , 0)
puts duplicate_count("abcdeB")
# , 1)
puts duplicate_count("abcdeaa")
# # , 1)
puts duplicate_count("abcdeaB")
# # , 2)
puts duplicate_count("Indivisibilities")
# # , 2)
