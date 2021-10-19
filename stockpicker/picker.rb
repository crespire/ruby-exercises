def stock_picker(values)
    best_profit = 0
    bestSell = nil
    bestBuy = nil

    values.each_with_index do |price, index|
        buy = bestBuy
        buy = price if buy == nil || (bestBuy > price)
        sell = bestSell
        sell = values[index+1] if values[index+1] != nil
        
        profit = sell - buy

        if profit > best_profit then
            bestBuy = buy if values.find_index(buy) < values.find_index(sell)
            bestSell = sell if values.find_index(sell) > values.find_index(buy)
            best_profit = bestSell - bestBuy
        end
    end
    [values.find_index(bestBuy), values.find_index(bestSell)]
end

priceA = [17,3,6,9,15,8,6,1,10]
p stock_picker(priceA) #Should reutnr [1, 4]
priceB = [26,3,6,2,15,8,6,22,1]
p stock_picker(priceB) #Should return [3, 7]
priceC = [44, 30, 24, 32, 35, 30, 40, 38, 15]
p stock_picker(priceC) #Should return [2, 6]