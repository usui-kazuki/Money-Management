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
  					.group(:category_id).sum(:price)

    @sum_price2 = Price.where(loginuser: session[:usr])
    				.group(:category_id).sum(:price)

  end

  def bar_graph
  end
end
 