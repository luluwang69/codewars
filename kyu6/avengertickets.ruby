# def tickets(people)
#   wallet = []
#   n = people.length
#
#   people.each do |x|
#     wallet << x
#     change_due = x - 25
#
#     sorted_wallet = wallet.sort.reverse
#     paid_out = []
#     left_in_wallet = []
#
#     sorted_wallet.each do |y|
#       if y <= change_due
#         change_due = change_due - y
#         paid_out << y
#       else
#         left_in_wallet << y
#       end
#     end
#
#     if change_due == 0
#       wallet = left_in_wallet
#     else
#       return "NO"
#     end
#   end
#
#   return "YES"
# end


# for i in 0 ... n
#   if people[i] - 25 >= a.inject(0){|sum,x| sum + x}
#     a << people[i]
#   end
# end



def tickets(people)
  wallet = []
  n = people.length

  people.each do |x|
    wallet << x
    change_due = x - 25
    wallet = give_change(wallet, change_due)
    return 'NO' if wallet == false
  end

  return "YES"
end

def give_change(wallet, change_due)
  sorted_wallet = wallet.sort.reverse
  paid_out = []
  left_in_wallet = []

  sorted_wallet.each do |x|
    if x <= change_due
      change_due = change_due - x
      paid_out << x
    else
      left_in_wallet << x
    end
  end

  if change_due == 0
    return left_in_wallet
  else
    return false
  end
end
#
# p give_change([1,2,1,4,1],3) == [4,1,1]
# p give_change([3,4,6],5) == false
# p give_change([1,2,2,2,1,4,1],6) == [2,2,1,1,1]
