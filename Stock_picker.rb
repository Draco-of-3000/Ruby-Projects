require 'pry-byebug'

def stock_picker (prices)
    min_price = prices[0]
    max_profit = 0
    day_to_buy = 0
    day_to_sell = 0
    result = []

    prices.each_with_index do |price, day|
        if price < min_price
            min_price = price
            day_to_buy = day
        elsif price - min_price > max_profit
            max_profit = price - min_price
            day_to_sell = day
            result = [day_to_buy, day_to_sell]
        end
    end

    return result
end

# stock_prices = [17,3,6,9,15,8,6,1,10]

puts stock_picker([17,3,6,9,15,8,6,1,10])