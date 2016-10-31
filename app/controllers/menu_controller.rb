class MenuController < ApplicationController
  def index
  	@usemoney = Price.where(loginuser: session[:usr]).where(hanbetsu: "収入").sum(:price)
    @usedmoney = Price.where(loginuser: session[:usr]).where(hanbetsu: "支出").sum(:price)
    @tgoal = Goal.where(loginuser: session[:usr]).sum(:goalmoney)
  end


end
