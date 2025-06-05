def stock_picker(prices)
  buy = 0
  sell = 0
  profit = -100000000000
  prices.each_with_index do |first, index|
    prices.drop(index + 1).each_with_index do |last, i|
      if (last - first > profit)
        buy = index
        sell = i + (index + 1)
        profit =  last - first
      end
      
    end
  end
  profit_array = Array.new()
  profit_array.push(buy, sell)
  p profit_array
  p profit
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([1, 2, 3, 4, 5, 6])
stock_picker([9, 8, 7, 6, 5, 4])
stock_picker([5, 10, 4, 11, 2, 15])
stock_picker([3, 8, 6, 5, 10, 1, 6])
stock_picker([5, 10])
stock_picker([7, 7, 7, 7])