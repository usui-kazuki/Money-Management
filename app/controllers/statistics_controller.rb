class StatisticsController < ApplicationController
  def circle_graph
  	@sum_price = Price.where(loginuser: session[:usr]).includes(:category).group(:categoryname).sum(:price)
  end

  def bar_graph
  end
end
