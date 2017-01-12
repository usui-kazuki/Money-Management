class StatisticsController < ApplicationController
  def circle_graph
  	if params[:m].present?
  	  @month = Date.parse(params[:m])
  	else
  	  @month = Date.today
    end
	smonth = @month.beginning_of_month
	emonth = @month.end_of_month

  	@sum_price = Price.where(loginuser: session[:usr])
  					.where(hanbetsu: "支出")
            .where('date >= ? AND date <= ?', smonth, emonth)
  					.includes(:category).group(:categoryname).sum(:price)

    @sum_price2 = Price.where(loginuser: session[:usr])
    				.where(hanbetsu: "収入")
            .where('date >= ? AND date <= ?', smonth, emonth)
    				.includes(:category).group(:categoryname).sum(:price)

  end

  def bar_graph
  end
end
 