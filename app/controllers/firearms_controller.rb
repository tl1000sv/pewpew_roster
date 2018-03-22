class FirearmsController < ApplicationController
  before_action :set_firearm, only: [:show, :edit, :update, :destroy]

  # GET /firearms
  # GET /firearms.json
  def index
    @firearms = Firearm.all
  end

  # GET /firearms/1
  # GET /firearms/1.json
  def show
  end

  # GET /firearms/new
  def new
    @firearm = Firearm.new
  end

  # GET /firearms/1/edit
  def edit
  end

  # POST /firearms
  # POST /firearms.json
  def create
    @firearm = Firearm.new(firearm_params)

    respond_to do |format|
      if @firearm.save
        format.html { redirect_to @firearm, notice: 'Firearm was successfully created.' }
        format.json { render :show, status: :created, location: @firearm }
      else
        format.html { render :new }
        format.json { render json: @firearm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firearms/1
  # PATCH/PUT /firearms/1.json
  def update
    respond_to do |format|
      if @firearm.update(firearm_params)
        format.html { redirect_to @firearm, notice: 'Firearm was successfully updated.' }
        format.json { render :show, status: :ok, location: @firearm }
      else
        format.html { render :edit }
        format.json { render json: @firearm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firearms/1
  # DELETE /firearms/1.json
  def destroy
    @firearm.destroy
    respond_to do |format|
      format.html { redirect_to firearms_url, notice: 'Firearm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firearm
      @firearm = Firearm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firearm_params
      params.require(:firearm).permit(:make, :model, :cartridge, :classification, :action, :serial_number)
    end
end
