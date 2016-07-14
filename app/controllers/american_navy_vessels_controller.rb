class AmericanNavyVesselsController < ApplicationController
  before_action :set_american_navy_vessel, only: [:show, :edit, :update, :destroy]

  # GET /american_navy_vessels
  # GET /american_navy_vessels.json
  def index
    @american_navy_vessels = AmericanNavyVessel.all
  end

  # GET /american_navy_vessels/1
  # GET /american_navy_vessels/1.json
  def show
  end

  # GET /american_navy_vessels/new
  def new
    @american_navy_vessel = AmericanNavyVessel.new
  end

  # GET /american_navy_vessels/1/edit
  def edit
  end

  # POST /american_navy_vessels
  # POST /american_navy_vessels.json
  def create
    @american_navy_vessel = AmericanNavyVessel.new(american_navy_vessel_params)

    respond_to do |format|
      if @american_navy_vessel.save
        format.html { redirect_to @american_navy_vessel, notice: 'American navy vessel was successfully created.' }
        format.json { render :show, status: :created, location: @american_navy_vessel }
      else
        format.html { render :new }
        format.json { render json: @american_navy_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /american_navy_vessels/1
  # PATCH/PUT /american_navy_vessels/1.json
  def update
    respond_to do |format|
      if @american_navy_vessel.update(american_navy_vessel_params)
        format.html { redirect_to @american_navy_vessel, notice: 'American navy vessel was successfully updated.' }
        format.json { render :show, status: :ok, location: @american_navy_vessel }
      else
        format.html { render :edit }
        format.json { render json: @american_navy_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /american_navy_vessels/1
  # DELETE /american_navy_vessels/1.json
  def destroy
    @american_navy_vessel.destroy
    respond_to do |format|
      format.html { redirect_to american_navy_vessels_url, notice: 'American navy vessel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_american_navy_vessel
      @american_navy_vessel = AmericanNavyVessel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def american_navy_vessel_params
      params.require(:american_navy_vessel).permit(:name, :designation, :description, :content)
    end
end
