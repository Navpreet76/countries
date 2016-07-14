class UnitedStatesController < ApplicationController
  before_action :set_united_state, only: [:show, :edit, :update, :destroy]

  # GET /united_states
  # GET /united_states.json
  def index
    @united_states = UnitedState.all
  end

  # GET /united_states/1
  # GET /united_states/1.json
  def show
  end

  # GET /united_states/new
  def new
    @united_state = UnitedState.new
  end

  # GET /united_states/1/edit
  def edit
  end

  # POST /united_states
  # POST /united_states.json
  def create
    @united_state = UnitedState.new(united_state_params)

    respond_to do |format|
      if @united_state.save
        format.html { redirect_to @united_state, notice: 'United state was successfully created.' }
        format.json { render :show, status: :created, location: @united_state }
      else
        format.html { render :new }
        format.json { render json: @united_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /united_states/1
  # PATCH/PUT /united_states/1.json
  def update
    respond_to do |format|
      if @united_state.update(united_state_params)
        format.html { redirect_to @united_state, notice: 'United state was successfully updated.' }
        format.json { render :show, status: :ok, location: @united_state }
      else
        format.html { render :edit }
        format.json { render json: @united_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /united_states/1
  # DELETE /united_states/1.json
  def destroy
    @united_state.destroy
    respond_to do |format|
      format.html { redirect_to united_states_url, notice: 'United state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_united_state
      @united_state = UnitedState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def united_state_params
      params.require(:united_state).permit(:name, :description)
    end
end
