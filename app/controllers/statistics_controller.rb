class StatisticsController < ApplicationController
  def circle_graph
  	if params[:m].present?
  	  @month = Date.parse(params[:m])
  	else
  	  @month = Date.today
    end
	smonth = @month.beginning_of_month
	emonth = @month.end_of_month
  	logger.debug smonth
  	logger.debug emonth

  	@sum_price = Price.where(loginuser: session[:usr])
  					.where(hanbetsu: "支出")
  					.where(date: smonth..emonth)
  					.includes(:category).group(:categoryname).sum(:price)

    @sum_price2 = Price.where(loginuser: session[:usr])
    				.where(hanbetsu: "収入")
    				.where(date: smonth..emonth)
    				.includes(:category).group(:categoryname).sum(:price)

  end

  def bar_graph
  end
end
 