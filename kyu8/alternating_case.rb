# class String
#   def to_alternating_case
#     return self.swapcase
#   end
# end

class String
  def to_alternating_case
    res = ""
    self.split("").each do |x|
      if x == x.upcase
        res = res + x.downcase
      else
        res = res + x.upcase
      end
    end
    return res
  end
end




p "hello world".to_alternating_case
# "HELLO WORLD"
# "HELLO WORLD".to_alternating_case(), "hello world"
# "hello WORLD".to_alternating_case(), "HELLO world"
# "HeLLo WoRLD".to_alternating_case(), "hEllO wOrld"
# "12345".to_alternating_case(), "12345"
# "1a2b3c4d5e".to_alternating_case(), "1A2B3C4D5E"
# "String.prototype.toAlternatingCase".to_alternating_case(), "sTRING.PROTOTYPE.TOaLTERNATINGcASE"
# "Hello World".to_alternating_case().to_alternating_case(), "Hello World"
