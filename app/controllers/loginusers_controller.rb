﻿class LoginusersController < ApplicationController

  before_action :set_loginuser, only: [:show, :edit, :update, :destroy]
  skip_before_action :check_logined


  # GET /loginusers
  # GET /loginusers.json
  def index
    @loginusers = Loginuser.all
  end

  # GET /loginusers/1
  # GET /loginusers/1.json
  def show
  end

  # GET /loginusers/new
  def new
    @loginuser = Loginuser.new
  end

  # GET /loginusers/1/edit
  def edit
  end

  # POST /loginusers
  # POST /loginusers.json
  def create
    @loginuser = Loginuser.new(loginuser_params)

    respond_to do |format|
      if @loginuser.save
        Category.create(categoryname: "株主配当金" , hanbetsu: "収入" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "副業" , hanbetsu: "収入" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "内職" , hanbetsu: "収入" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "服" , hanbetsu: "支出" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "遊び" , hanbetsu: "支出" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "たばこ" , hanbetsu: "支出" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "交際費" , hanbetsu: "支出" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "水道光熱費" , hanbetsu: "支出" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "給料" , hanbetsu: "収入" , loginuser_id: @loginuser.id)
        Category.create(categoryname: "食費" , hanbetsu: "支出" , loginuser_id: @loginuser.id)
        Familyuser.create(name: "自分" , loginuser_id: @loginuser.id)
                
        format.html { redirect_to @loginuser, notice: '' }
        format.json { render :show, status: :created, location: @loginuser }
      else
        format.html { render :new }
        format.json { render json: @loginuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loginusers/1
  # PATCH/PUT /loginusers/1.json
  def update
    respond_to do |format|
      if @loginuser.update(loginuser_params)
        format.html { redirect_to @loginuser, notice: '' }
        format.json { render :show, status: :ok, location: @loginuser }
      else
        format.html { render :edit }
        format.json { render json: @loginuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loginusers/1
  # DELETE /loginusers/1.json
  def destroy
    @loginuser.destroy
    respond_to do |format|
      format.html { redirect_to loginusers_url, notice: '' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loginuser
      @loginuser = Loginuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loginuser_params
      params.require(:loginuser).permit(:password, :username)
    end

end
