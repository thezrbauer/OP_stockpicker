def stock_picker(array)
    profit = 0
    buy_day = 0
    sell_day = 0 

    0.upto((array.length - 2)) do |i|
        1.upto((array.length -1)) do |j|
            if i < j 
                total = array[j] - array[i]
               if total > profit
                profit = total
                buy_day = i
                sell_day = j
               end
            end
        end
    end 
    return [buy_day, sell_day]
end 

stock_picker([17,3,6,9,15,8,6,1,10])