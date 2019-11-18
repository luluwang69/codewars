# def growing_plant(upSpeed, downSpeed, desiredHeight)
#   if desiredHeight.to_i < upSpeed.to_i
#     return 1
#   else
#   return (desiredHeight.to_i/(upSpeed.to_i - downSpeed.to_i)).ceil
#   end
# end
def growing_plant(upSpeed, downSpeed, desiredHeight)
  difference = desiredHeight - upSpeed
  if difference <= 0
    return 1
  else
    return (difference.to_f/(upSpeed - downSpeed)).ceil + 1
  end
end




p growing_plant(100,10,910)
# ,10
# growing_plant(10,9,4),1
# growing_plant(5,2,0),1
# growing_plant(5,2,5),1
# growing_plant(5,2,6),2
