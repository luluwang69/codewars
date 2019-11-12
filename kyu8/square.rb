def is_square(x)
  # if x < 0
  #   return false
  # else
  #   return Math.sqrt(x) - Math.sqrt(x).to_i == 0
  # end
  # if x >= 0
  #   return Math.sqrt(x) - Math.sqrt(x).to_i == 0
  # else
  #   return false
  # end

  return (x >= 0) && (Math.sqrt(x) - Math.sqrt(x).to_i == 0)
end



p is_square(0) == true
p is_square(25) == true
p is_square(5) == false
p is_square(-5) == false
