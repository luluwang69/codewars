# def remove_char(s)
# return s.slice(1..s.length-2)
# end


def remove_char(s)
  string = ""
  for i in 1..s.length-2
    string = string + s[i]
  end
  return string
end






 p remove_char('eloquent')
  #'loquen'
# remove_char('country'), 'ountr'
# remove_char('person'), 'erso'
# remove_char('place'), 'lac'
# remove_char('ok')
# , ''
