class GermanNavyVesselsController < ApplicationController
  before_action :set_german_navy_vessel, only: [:show, :edit, :update, :destroy]

  # GET /german_navy_vessels
  # GET /german_navy_vessels.json
  def index
    @german_navy_vessels = GermanNavyVessel.all
  end

  # GET /german_navy_vessels/1
  # GET /german_navy_vessels/1.json
  def show
  end

  # GET /german_navy_vessels/new
  def new
    @german_navy_vessel = GermanNavyVessel.new
  end

  # GET /german_navy_vessels/1/edit
  def edit
  end

  # POST /german_navy_vessels
  # POST /german_navy_vessels.json
  def create
    @german_navy_vessel = GermanNavyVessel.new(german_navy_vessel_params)

    respond_to do |format|
      if @german_navy_vessel.save
        format.html { redirect_to @german_navy_vessel, notice: 'German navy vessel was successfully created.' }
        format.json { render :show, status: :created, location: @german_navy_vessel }
      else
        format.html { render :new }
        format.json { render json: @german_navy_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /german_navy_vessels/1
  # PATCH/PUT /german_navy_vessels/1.json
  def update
    respond_to do |format|
      if @german_navy_vessel.update(german_navy_vessel_params)
        format.html { redirect_to @german_navy_vessel, notice: 'German navy vessel was successfully updated.' }
        format.json { render :show, status: :ok, location: @german_navy_vessel }
      else
        format.html { render :edit }
        format.json { render json: @german_navy_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /german_navy_vessels/1
  # DELETE /german_navy_vessels/1.json
  def destroy
    @german_navy_vessel.destroy
    respond_to do |format|
      format.html { redirect_to german_navy_vessels_url, notice: 'German navy vessel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_german_navy_vessel
      @german_navy_vessel = GermanNavyVessel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def german_navy_vessel_params
      params.require(:german_navy_vessel).permit(:name, :designation, :description, :content)
    end
end
