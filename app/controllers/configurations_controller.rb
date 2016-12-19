class ConfigurationsController < ApplicationController
  def index
        @loginusers = Loginuser.all
  end

  def tablereset
  	 Price.where(loginuser: session[:usr]).delete_all
     Category.where(loginuser: session[:usr]).delete_all
     Goal.where(loginuser: session[:usr]).delete_all
     Familyuser.where(loginuser: session[:usr]).delete_all
     Notice.where(loginuser: session[:usr]).delete_all
        Category.create(categoryname: "株主配当金" , hanbetsu: "収入" , loginuser_id: session[:usr])
        Category.create(categoryname: "副業" , hanbetsu: "収入" , loginuser_id: session[:usr])
        Category.create(categoryname: "内職" , hanbetsu: "収入" , loginuser_id: session[:usr])
        Category.create(categoryname: "服" , hanbetsu: "支出" , loginuser_id: session[:usr])
        Category.create(categoryname: "遊び" , hanbetsu: "支出" , loginuser_id: session[:usr])
        Category.create(categoryname: "たばこ" , hanbetsu: "支出" , loginuser_id: session[:usr])
        Category.create(categoryname: "交際費" , hanbetsu: "支出" , loginuser_id: session[:usr])
        Category.create(categoryname: "水道光熱費" , hanbetsu: "支出" , loginuser_id: session[:usr])
        Category.create(categoryname: "給料" , hanbetsu: "収入" , loginuser_id: session[:usr])
        Category.create(categoryname: "食費" , hanbetsu: "支出" , loginuser_id: session[:usr])
        Familyuser.create(name: "自分" , loginuser_id: session[:usr])

     respond_to do |format|
      format.html { redirect_to configurations_index_path, notice: '' }
      format.json { head :no_content }
     end
  end
end
