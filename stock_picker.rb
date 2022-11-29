stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  profits = {}
  for i in 0..prices.length-1
    for j in i+1..prices.length-1
      profits[[i,j]] = prices[j]-prices[i]
    end
  end

  return profits.select { |k,v| v == profits.values.max() }.keys.flatten
end

p stock_picker(stock_prices)