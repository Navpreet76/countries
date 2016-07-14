class AmericanUnitsController < ApplicationController
  before_action :set_american_unit, only: [:show, :edit, :update, :destroy]

  # GET /american_units
  # GET /american_units.json
  def index
    @american_units = AmericanUnit.all
  end

  # GET /american_units/1
  # GET /american_units/1.json
  def show
  end

  # GET /american_units/new
  def new
    @american_unit = AmericanUnit.new
  end

  # GET /american_units/1/edit
  def edit
  end

  # POST /american_units
  # POST /american_units.json
  def create
    @american_unit = AmericanUnit.new(american_unit_params)

    respond_to do |format|
      if @american_unit.save
        format.html { redirect_to @american_unit, notice: 'American unit was successfully created.' }
        format.json { render :show, status: :created, location: @american_unit }
      else
        format.html { render :new }
        format.json { render json: @american_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /american_units/1
  # PATCH/PUT /american_units/1.json
  def update
    respond_to do |format|
      if @american_unit.update(american_unit_params)
        format.html { redirect_to @american_unit, notice: 'American unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @american_unit }
      else
        format.html { render :edit }
        format.json { render json: @american_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /american_units/1
  # DELETE /american_units/1.json
  def destroy
    @american_unit.destroy
    respond_to do |format|
      format.html { redirect_to american_units_url, notice: 'American unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_american_unit
      @american_unit = AmericanUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def american_unit_params
      params.require(:american_unit).permit(:name, :designation, :description, :content)
    end
end
