def stock_picker(values)
    answer = []
    best_profit = 0

    values.each_with_index do |price, index|
        compare = values.slice(index + 1, values.length-index)
        compare.each do |future_price|
            profit = future_price - price
            if profit > best_profit then
                best_profit = profit
                answer = [values.find_index(price), values.find_index(future_price)]
            end
        end
    end
    answer
end

priceA = [17,3,6,9,15,8,6,1,10]
p stock_picker(priceA) #Should reutnr [1, 4]
priceB = [26,3,6,2,15,8,6,22,1]
p stock_picker(priceB) #Should return [3, 7]
priceC = [44, 30, 24, 32, 35, 30, 40, 38, 15]
p stock_picker(priceC) #Should return [2, 6]