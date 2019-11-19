def tribonacci(signature,n)
i = 0

  if n == 0
    return []
    # until signature.count == n do
    #   signature.delete_at(i)
    #   i = i + 1
    # end
  elsif n < 3
    return signature[0..n-1]
  else
     until signature.count == n do
      signature << signature[i] + signature[i+1] + signature[i+2]
      i = i + 1
    end
  return signature
  end
end









 # /
 # p tribonacci([1,1,1],3)
# ,[1,1,1,3,5,9,17,31,57,105]
# tribonacci([0,0,1],10),[0,0,1,1,2,4,7,13,24,44]
# tribonacci([0,1,1],10),[0,1,1,2,4,7,13,24,44,81]
# tribonacci([1,0,0],10),[1,0,0,1,1,2,4,7,13,24]
 # p tribonacci([0,0,0],10)
# [0,0,0,0,0,0,0,0,0,0]
# tribonacci([1,2,3],10),[1,2,3,6,11,20,37,68,125,230]
# tribonacci([3,2,1],10),[3,2,1,6,9,16,31,56,103,190]
 p tribonacci([3,1,1],2)
 # ,[1]
 p tribonacci([300,200,100],0)
# ,[]
# p tribonacci([0.5,0.5,0.5],30)
# ,[0.5,0.5,0.5,1.5,2.5,4.5,8.5,15.5,28.5,52.5,96.5,177.5,326.5,600.5,1104.5,2031.5,3736.5,6872.5,12640.5,23249.5,42762.5,78652.5,144664.5,266079.5,489396.5,900140.5,1655616.5,3045153.5,5600910.5,10301680.5])
