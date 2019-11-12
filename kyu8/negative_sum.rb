# def count_positives_sum_negatives(lst)
#   if lst == []
#     return []
#   end
#   array = []
#   array << lst.count {|x| x > 0}
#
#   sum = 0
#   lst.each do |y|
#     if y < 0
#     sum = sum + y
#     end
#   end
#   array << sum
#   return array
# end

def count_positives_sum_negatives(lst)
  return [] if lst.empty?
  result = [0,0]
  # lst.each {|x| x > 0 ? result[0] += 1 : result[1] += x}
  lst.each do |x|
    if x > 0
      result[0] = result[0] + 1
    else
      result[1] = result[1] + x
    end
  end
  result
end




p count_positives_sum_negatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])
# count_positives_sum_negatives([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14]),[8,-50]
# count_positives_sum_negatives([1]),[1,0]
# count_positives_sum_negatives([-1]),[0,-1]
# count_positives_sum_negatives([0,0,0,0,0,0,0,0,0]),[0,0]
