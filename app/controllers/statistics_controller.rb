class StatisticsController < ApplicationController
  def circle_graph
  	@sum_price = Price.where(loginuser: session[:usr]).where(hanbetsu: "支出").includes(:category).group(:categoryname).sum(:price)
    @sum_price2 = Price.where(loginuser: session[:usr]).where(hanbetsu: "収入").includes(:category).group(:categoryname).sum(:price)

  end

  def bar_graph
  end
end
