def stock_picker(array)
  i = 0
  max_profit = 0
  best_days = Array.new
  while i <= array.length - 2 do
    k = i + 1
    until k == array.length - 1 do
      profit = array[k] - array[i]
      if profit > max_profit
        max_profit = profit
        best_days.pop(2) unless best_days.empty?
        best_days.push(i)
        best_days.push(k)
      end
      k += 1
    end
    i += 1
  end
  puts best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])