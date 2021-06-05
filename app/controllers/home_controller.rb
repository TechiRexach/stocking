class HomeController < ApplicationController

  @api = StockQuote::Stock.new(api_key: 'pk_0d42640b3273439497d5bc858e3f60a7')

  def index
    if params[:ticker] == ''
      @nothing = 'Hey, you forgot to enter a symbol!'
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue => e
        @error = e
        puts e
      end
    end
  end

  def about
  end
end




