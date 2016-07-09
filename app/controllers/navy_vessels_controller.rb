class NavyVesselsController < ApplicationController
  before_action :set_navy_vessel, only: [:show, :edit, :update, :destroy]

  # GET /navy_vessels
  # GET /navy_vessels.json
  def index
    @navy_vessels = NavyVessel.all
  end

  # GET /navy_vessels/1
  # GET /navy_vessels/1.json
  def show
  end

  # GET /navy_vessels/new
  def new
    @navy_vessel = NavyVessel.new
  end

  # GET /navy_vessels/1/edit
  def edit
  end

  # POST /navy_vessels
  # POST /navy_vessels.json
  def create
    @navy_vessel = NavyVessel.new(navy_vessel_params)

    respond_to do |format|
      if @navy_vessel.save
        format.html { redirect_to @navy_vessel, notice: 'Navy vessel was successfully created.' }
        format.json { render :show, status: :created, location: @navy_vessel }
      else
        format.html { render :new }
        format.json { render json: @navy_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navy_vessels/1
  # PATCH/PUT /navy_vessels/1.json
  def update
    respond_to do |format|
      if @navy_vessel.update(navy_vessel_params)
        format.html { redirect_to @navy_vessel, notice: 'Navy vessel was successfully updated.' }
        format.json { render :show, status: :ok, location: @navy_vessel }
      else
        format.html { render :edit }
        format.json { render json: @navy_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navy_vessels/1
  # DELETE /navy_vessels/1.json
  def destroy
    @navy_vessel.destroy
    respond_to do |format|
      format.html { redirect_to navy_vessels_url, notice: 'Navy vessel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navy_vessel
      @navy_vessel = NavyVessel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def navy_vessel_params
      params.require(:navy_vessel).permit(:name, :designation, :strength)
    end
end
