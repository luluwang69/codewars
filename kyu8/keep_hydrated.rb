def litres(time)
  time*0.5..to_s.split(".").first.to_i
end



p litres(2)== 1
p litres(1)== 0
# litres(10)== 5
# litres(1.4)== 0
# litres(12.3)== 6
# litres(0.82)== 0
# litres(11.8)== 5
# litres(1787)== 893
# litres(0)== 0
# litres(5.5)== 2
