class LoginusersController < ApplicationController
  before_action :set_loginuser, only: [:show, :edit, :update, :destroy]
  before_action :auth

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
        format.html { redirect_to @loginuser, notice: 'Loginuser was successfully created.' }
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
        format.html { redirect_to @loginuser, notice: 'Loginuser was successfully updated.' }
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
      format.html { redirect_to loginusers_url, notice: 'Loginuser was successfully destroyed.' }
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

#    def auth
  #    password = 'a'
   #   username = 'a'
    #  authenticate_or_request_with_http_basic('Money-Management') do |p,u|
     #   p == password && u == username
    #end
#end
end
