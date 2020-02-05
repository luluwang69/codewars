# def christmas_tree(height)
#
# n = height + (height-1)
# odd = (1..n).select {|a| a%2 != 0}
# arr = []
# string = []
#
# for i in 0...height
#  string << Array.new(odd[i], "*")
#    end
#
# return string
#
# end

# def christmas_tree(height)
#   res = ''
#   for i in 1..height
#     space = ' '*(height - i)
#     stars = "*"*(2*i - 1)
#     res = res + space + stars + space + "\n"
#   end
#   return res[0..-2]
# end

# def christmas_tree(height)
#   (1..height).to_a.inject('') do |r,e|
#     new_row = " "*(height - e) + "*"*(2*e - 1) +  " "*(height - e) + "\n"
#     res = r + new_row
#     p r
#     p e
#     p new_row
#     p res
#     puts 'END OF THIS ITERATION'
#     puts ''
#     puts ''
#
#     res
#   end[0..-2]
# end

def christmas_tree(height)
  # (1..height).to_a.inject(''){ |r,e| r + " "*(height - e) + "*"*(2*e - 1) +  " "*(height - e) + "\n" }[0..-2]
  (1..height).to_a.inject(''){ |r,e| "#{r}#{" "*(height - e)}#{"*"*(2*e - 1)}#{" "*(height - e)}\n" }[0..-2]
end







    # p christmas_tree(1)
    # == "*"

     # p christmas_tree(2)
    # == " * \n***"

     christmas_tree(5)
     # puts christmas_tree(5)
      # == "  *  \n *** \n*****"
    # #
    # p christmas_tree(4) == "   *   \n  ***  \n ***** \n*******"
    #
    # christmas_tree(5) == "    *    \n   ***   \n  *****  \n ******* \n*********"
    #
    # christmas_tree(6) == "     *     \n    ***    \n   *****   \n  *******  \n ********* \n***********"
    #
    # christmas_tree(7) == "      *      \n     ***     \n    *****    \n   *******   \n  *********  \n *********** \n*************"
    #
    # christmas_tree(8) == "       *       \n      ***      \n     *****     \n    *******    \n   *********   \n  ***********  \n ************* \n***************"
    #
    # christmas_tree(9) == "        *        \n       ***       \n      *****      \n     *******     \n    *********    \n   ***********   \n  *************  \n *************** \n*****************"
    #
    # christmas_tree(10) == "         *         \n        ***        \n       *****       \n      *******      \n     *********     \n    ***********    \n   *************   \n  ***************  \n ***************** \n*******************"
    #
