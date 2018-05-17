require 'stock_quote'
class UtilitiesController < ApplicationController
    
  def index
  end
  
    
  def pick_lucky_numbers
    #45개의 숫자 중에서 6개를 뽑는다.
    #numbers = (1..45).to_a #action으로만, 보여줄 필요 없으니까
    
    #random_numbers = numbers.sample 6
    #@lucky_numbers = random_numbers.sort #array
    @lucky_numbers = (1..45).to_a.sample(6).sort
  end
  
  def get_stock_info
  end
  
  def show_stock_info
    puts params
    #input = # 사용자가 get_stock_info에서 보낸 data
    input='amzn'
    stock = StockQuote::Stock.quote(input)
    @c_name = stock.company_name
    @c_price = stock.latest_price
  end


end
