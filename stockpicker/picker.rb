def stock_picker(values)
    answer = []
    best_profit = 0

    values.each_with_index do |price, index|
        # Is today's price lower than yesterdays?
        #   yes, set the buy price to current price
        #   no, keep yesterday's buy price
        # Set the sell price to tomorrow's price
        # Check the profit
        # Is this profit better than my old profit?
        #   Yes, then save this sell price
        #   No, then keep the old sell price
        # find the indicies in value of the buy and sell prices and return them.
        buy = price if buy == nil
        if buy > price then buy = price
        
        sell = price if sell == nil
        if sell < values[index+1] then sell = price

        profit = sell - buy
        if profit > best_profit then
            best_profit = profit
        

        #compare = values.slice(index + 1, values.length-index)
        #compare.each do |future_price|
        #    profit = future_price - price
        #    if profit > best_profit then
        #        best_profit = profit
        #        answer = [values.find_index(price), values.find_index(future_price)]
        #    end
        #end
    end
    answer = [values.find_index(buy), values.find_index(sell)]
end

priceA = [17,3,6,9,15,8,6,1,10]
puts stock_picker(priceA)
priceB = [22,3,6,9,15,8,6,16,1]
puts stock_picker(priceB)
priceC = [44, 30, 24, 32, 35, 30, 40, 38, 15]
puts stock_picker(priceC)