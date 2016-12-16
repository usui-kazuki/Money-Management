class MenuController < ApplicationController
  def index
  	@month = Date.today
    @emonth = @month.end_of_month
    @eday = @month.end_of_month.day
    @day = Date.today.day
    @zday = @eday - @day

    @usemoney = Price.where(loginuser: session[:usr])
    					.where(hanbetsu: "収入")
    					.where(date: @month.beginning_of_month..@month.end_of_month)
    					.sum(:price)

    @usedmoney = Price.where(loginuser: session[:usr])
    					.where(hanbetsu: "支出")
    					.where(date: @month.beginning_of_month..@month.end_of_month)
    					.sum(:price)

    @tgoal = Goal.where(loginuser: session[:usr]).sum(:goalmoney)
    @zgoal = @tgoal - @usedmoney
    @notices = Notice.where(loginuser: session[:usr])
  end
end
