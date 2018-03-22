class BowsController < ApplicationController
  before_action :set_bow, only: [:show, :edit, :update, :destroy]

  # GET /bows
  # GET /bows.json
  def index
    @bows = Bow.all
  end

  # GET /bows/1
  # GET /bows/1.json
  def show
  end

  # GET /bows/new
  def new
    @bow = Bow.new
  end

  # GET /bows/1/edit
  def edit
  end

  # POST /bows
  # POST /bows.json
  def create
    @bow = Bow.new(bow_params)

    respond_to do |format|
      if @bow.save
        format.html { redirect_to @bow, notice: 'Bow was successfully created.' }
        format.json { render :show, status: :created, location: @bow }
      else
        format.html { render :new }
        format.json { render json: @bow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bows/1
  # PATCH/PUT /bows/1.json
  def update
    respond_to do |format|
      if @bow.update(bow_params)
        format.html { redirect_to @bow, notice: 'Bow was successfully updated.' }
        format.json { render :show, status: :ok, location: @bow }
      else
        format.html { render :edit }
        format.json { render json: @bow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bows/1
  # DELETE /bows/1.json
  def destroy
    @bow.destroy
    respond_to do |format|
      format.html { redirect_to bows_url, notice: 'Bow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow
      @bow = Bow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bow_params
      params.require(:bow).permit(:make, :model, :serial_number, :description, :bow_type)
    end
end
