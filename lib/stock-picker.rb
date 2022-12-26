require 'pry-byebug'

def stock_picker(stock_prices)
  current_highest_price = 0
  buy_sell = {}
  stock_prices.reverse.each_with_index do |buy_price, buy_price_index|
    stock_prices.reverse.drop(buy_price_index + 1).each_with_index do |sell_price, sell_price_index|
      stock_prices.drop(buy_price_index + 1)
      profit = buy_price - sell_price
      next unless profit > current_highest_price

      current_highest_price = profit
      buy_sell[:buy] = (-buy_price_index) + (stock_prices.length - 1)
      buy_sell[:sell] = - ((buy_price_index + 1) + sell_price_index) + (stock_prices.length - 1)
    end
  end
  buy_sell
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
