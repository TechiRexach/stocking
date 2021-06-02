class HomeController < ApplicationController

  @api = StockQuote::Stock.new(api_key: 'pk_0d42640b3273439497d5bc858e3f60a7')

  def index
    if params[:company] == ''
      @nothing = 'Hey, you forgot to enter a symbol!'
    elsif params[:company]
      @stock = StockQuote::Stock.quote(params[:company])
      if !@stock 
        @error = 'Hey, that stock symbol doesnt exist'
      end
    end
    
  end

  def about
  end
end
