# frozen_string_literal: true

# Finds best buy and sell dates from stock prices list
class StockPicker
  def stock_picker(stock_prices)
    result = [0, 0, 0]
    stock_prices = stock_prices.split(',').map(&:to_i)
    stock_prices.each_with_index do |buy_price, buy_date|
      sell_prices = stock_prices.slice(buy_date, stock_prices.length).map(&:to_i)
      sell_price = sell_prices.max
      sell_date = stock_prices.index sell_price
      profit = sell_price - buy_price
      result = [buy_date, sell_date, profit] if profit > result[2]
    end
    result
  end
end

# 17,3,6,9,15,8,6,1,10
puts 'Enter stock list:'
stock_prices = gets.chomp
result = StockPicker.new.stock_picker stock_prices
print "Buy Date: #{result[0].to_s} Sell Date: #{result[1].to_s} Profit: #{result[2].to_s}."
