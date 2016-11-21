class MenuController < ApplicationController
  def index
  	@month = Date.today

    @usemoney = Price.where(loginuser: session[:usr])
    					.where(hanbetsu: "収入")
    					.where(date: @month.beginning_of_month..@month.end_of_month)
    					.sum(:price)

    @usedmoney = Price.where(loginuser: session[:usr])
    					.where(hanbetsu: "支出")
    					.where(date: @month.beginning_of_month..@month.end_of_month)
    					.sum(:price)

    @tgoal = Goal.where(loginuser: session[:usr]).sum(:goalmoney)
    
    @notices = Notice.where(loginuser: session[:usr])
  end
end
