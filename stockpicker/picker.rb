def stock_picker(values)
    best_profit = 0
    buy = 0
    sell = 0

    values.each_with_index do | price, index |
        today = price < values[buy] ? price : values[buy]
        tomorrow = price
        tomorrow = values[index+1] if !(values[index+1] == nil)

        profit = tomorrow - today

        if profit > best_profit then
            buy = price < values[buy] ? index : buy
            sell = index + 1
            best_profit = profit
        end
    end
    [buy, sell] unless best_profit == 0
end

priceA = [17,3,6,9,15,8,6,1,10]
p stock_picker(priceA) #Should return [1, 4]
priceB = [26,3,6,2,15,8,6,22,1]
p stock_picker(priceB) #Should return [3, 7]
priceC = [44, 30, 24, 32, 35, 30, 40, 38, 15]
p stock_picker(priceC) #Should return [2, 6]
priceD = [55,1,5,2,5,3,7,6]
p stock_picker(priceD) #Should return [1, 6]
priceE = [40,20,10,11,4]
p stock_picker(priceE) #Should return [2, 3]
priceF = [40,20,10,6,4]
p stock_picker(priceF) #Should return nil
