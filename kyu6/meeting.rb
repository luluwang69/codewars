def meeting(s)
a = []
b = []
new = []
c = ""
  s.upcase.split(';').each{|x| a << x.split(":")}
  a.each{|x| b << [x[1],x[0]]}
  new = b.sort
  new.inject("") do |result, element|
    c = result + "(" + element[0] + ", " + element[1] + ")"
    c
  end
  return c
end



# Good answer
# def meeting(s)
#   s.upcase.split(';').map{|x| x.split(":").reverse}.sort.map{|x| "(#{x.join(', ')})"}.join
# end


#
#
#
p meeting("Alexis:Wahl;John:Bell;Victoria:Schwarz;Abba:Dorny;Grace:Meta;Ann:Arno;Madison:STAN;Alex:Cornwell;Lewis:Kern;Megan:Stan;Alex:Korn")
       #     # "(ARNO, ANN)(BELL, JOHN)(CORNWELL, ALEX)(DORNY, ABBA)(KERN, LEWIS)(KORN, ALEX)(META, GRACE)(SCHWARZ, VICTORIA)(STAN, MADISON)(STAN, MEGAN)(WAHL, ALEXIS)"
       # meeting("John:Gates;Michael:Wahl;Megan:Bell;Paul:Dorries;James:Dorny;Lewis:Steve;Alex:Meta;Elizabeth:Russel;Anna:Korn;Ann:Kern;Amber:Cornwell")
       #     # "(BELL, MEGAN)(CORNWELL, AMBER)(DORNY, JAMES)(DORRIES, PAUL)(GATES, JOHN)(KERN, ANN)(KORN, ANNA)(META, ALEX)(RUSSEL, ELIZABETH)(STEVE, LEWIS)(WAHL, MICHAEL)")
       # meeting("Alex:Arno;Alissa:Cornwell;Sarah:Bell;Andrew:Dorries;Ann:Kern;Haley:Arno;Paul:Dorny;Madison:Kern")
       #     # "(ARNO, ALEX)(ARNO, HALEY)(BELL, SARAH)(CORNWELL, ALISSA)(DORNY, PAUL)(DORRIES, ANDREW)(KERN, ANN)(KERN, MADISON)")

# array = ["hello:world","Wang:Danlu"]
# # array = ["hello","world","Joe"]
# inject_res = array.inject("")do |result, element|
#   str_arry = element.split(":")
#   curr = result +  "(" + str_arry[1] + ":" + str_arry[0] + ")"
#   p curr
#   curr
# end
#
# p inject_res
