def stock_picker (prices)
    min_price = prices[0]
    max_profit = 0
    day_to_buy = 0
    day_to_sell = 0
    result = []

     # Loop through each price in the array and keep track of the day index
    prices.each_with_index do |price, day|

        # If the current price is less than the current minimum price, update the minimum price and day to buy
        if price < min_price
            min_price = price
            day_to_buy = day

        #if the current price minus the minimum price is greater than the current maximum profit, update the maximum profit and day to sell
        elsif price - min_price > max_profit
            max_profit = price - min_price
            day_to_sell = day

            # Update the 'result' array with the best days to buy and sell so far
            result = [day_to_buy, day_to_sell]
        end
    end

    return result
end