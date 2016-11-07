class PricesController < ApplicationController
  before_action :set_price, only: [:show, :edit, :update, :destroy, :editcategory, :updatecategory]

  # GET /prices
  # GET /prices.json
  def index
    @prices = Price.where(loginuser: session[:usr])
  end

  def incomehistory
    @incomehistories = Price.where(loginuser: session[:usr]).where(hanbetsu: "収入")
  end

  def spendinghistory
        @spendinghistories = Price.where(loginuser: session[:usr]).where(hanbetsu: "支出")
  end

  def show
    
  end

  # GET /prices/new
  def new
    @price = Price.new
    @price.hanbetsu = params[:hanbetsu]

  end

  # GET /prices/1/edit
  def edit
  end

  # POST /prices
  # POST /prices.json
  def create
    @price = Price.new(price_params)
    @price.loginuser_id = session[:usr]

    respond_to do |format|
      if @price.save
        format.html { redirect_to editcategory_price_path(@price), notice: 'Price was successfully created.' }
        format.json { render :show, status: :created, location: @price }
      else
        format.html { render :new }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prices/1
  # PATCH/PUT /prices/1.json
  def update
    respond_to do |format|
      if @price.update(price_params)
        format.html { redirect_to editcategory_price_path(@price), notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @price }
      else
        format.html { render :edit }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prices/1
  # DELETE /prices/1.json
  def destroy
    @price.destroy
    respond_to do |format|
      format.html { redirect_to prices_url, notice: 'Price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def editcategory

  end

  def updatecategory
    respond_to do |format|
      if @price.update(price_params)
        format.html { redirect_to @price, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @price }
      else
        format.html { render :edit }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
      params.require(:price).permit(:date, :price, :memo, :familyuser_id, :payment, :loginuser_id, :hanbetsu, :category_id)
    end
end
