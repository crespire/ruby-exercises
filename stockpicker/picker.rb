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
puts stock_picker(priceA)
priceB = [22,3,6,9,15,8,6,16,1]
puts stock_picker(priceB)
priceC = [44, 30, 24, 32, 35, 30, 40, 38, 15]
puts stock_picker(priceC)