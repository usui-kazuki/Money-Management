class FamilyusersController < ApplicationController
  before_action :set_familyuser, only: [:show, :edit, :update, :destroy]

  # GET /familyusers
  # GET /familyusers.json
  def index
    @familyusers = Familyuser.where(loginuser: session[:usr])
  end

  # GET /familyusers/1
  # GET /familyusers/1.json
  def show
  end

  # GET /familyusers/new
  def new
    @familyuser = Familyuser.new
  end

  # GET /familyusers/1/edit
  def edit
  end

  # POST /familyusers
  # POST /familyusers.json
  def create
    @familyuser = Familyuser.new(familyuser_params)
    @familyuser.loginuser_id = session[:usr]

    respond_to do |format|
      if @familyuser.save
        format.html { redirect_to @familyuser, notice: 'Familyuser was successfully created.' }
        format.json { render :show, status: :created, location: @familyuser }
      else
        format.html { render :new }
        format.json { render json: @familyuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /familyusers/1
  # PATCH/PUT /familyusers/1.json
  def update
    respond_to do |format|
      if @familyuser.update(familyuser_params)
        format.html { redirect_to @familyuser, notice: 'Familyuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @familyuser }
      else
        format.html { render :edit }
        format.json { render json: @familyuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familyusers/1
  # DELETE /familyusers/1.json
  def destroy
    @familyuser.destroy
    respond_to do |format|
      format.html { redirect_to familyusers_url, notice: 'Familyuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_familyuser
      @familyuser = Familyuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def familyuser_params
      params.require(:familyuser).permit(:name, :loginuser_id)
    end
end
