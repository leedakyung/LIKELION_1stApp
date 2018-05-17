# puts "Hack Your Life"

require 'stock_quote'

#사용자가 입력할 수 있게 만들기
print '원하는 NASDAQ 주식의 심볼을 입력하세요:'
input = gets.chomp

stock = StockQuote::Stock.quote(input)
puts stock.company_name
puts stock.latest_price

# 배열 이용한 여러 값 출력할 때
# stocks = StockQuote::Stock.quote("amzn, tsla, appl, fb, googl")
# stocks.each do |stock| 
#     puts stock.latest_price
# end

# 하나만 출력할 때
# stock = StockQuote::Stock.quote("aapl")
# puts stock.company_name, stock.latest_price

