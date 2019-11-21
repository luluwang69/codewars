def queue_time(customers, n)
  tills = []
  tills << 0 until tills.count == n

  customers.each do |customer|
    tills.sort!
    tills[0] = tills[0] + customer
  end
return tills.max
end
  # if customers.count == 0
  #   return 0
  # elsif customers.count == 1
  #   return customers[0]
  # else
  #    if n == 1
  #   return customers.inject(:+)
  #    if n > 1
  #
  #
  #   end
  #












p queue_time([1,2,3], 5)
p queue_time([], 1)
# 0, "wrong answer for case with an empty queue")
p queue_time([5], 1)
# 5, "wrong answer for a single person in the queue")
p queue_time([2], 5)
# , 2, "wrong answer for a single person in the queue")
p queue_time([1,2,3,4,5], 1)
# , 15, "wrong answer for a single till")
# queue_time([1,2,3,4,5], 100)
# , 5, "wrong answer for a case with a large number of tills")
# queue_time([2,2,3,3,4,4], 2)
# , 9, "wrong answer for a case with two tills")
