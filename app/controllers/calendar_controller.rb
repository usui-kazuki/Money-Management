class CalendarController < ApplicationController
  def index
    @incomehistories = Price.where(loginuser: session[:usr]).where(hanbetsu: "収入").order(date: :asc)
    @spendinghistories = Price.where(loginuser: session[:usr]).where(hanbetsu: "支出").order(date: :asc)

    @datas = []
    @incomehistories.each do |data|
    	@datas = @datas + [
    		'title' => data.category.try(:categoryname),
    		'start' => data.date,
    		'color' => 'red',
    		'url'   => price_path(data)
       	]
    end
    @spendinghistories.each do |data|
    	@datas = @datas + [
    		'title' => data.category.try(:categoryname),
    		'start' => data.date,
    		'color' => 'blue',
    		'url'   => price_path(data)

    	]
    end
  end
end
